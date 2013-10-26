#!/bin/bash

# exit immediately if a command exits with a nonzero exit status.
set -e

# Folder name for the virtual environment.
VIRTUAL_ENV_FOLDER=".virtualenv_jenkins"
# Additions to PYTHONPATH will be listed in this file in the app folder.
DEV_PYTHONPATH_FILE="dev_pythonpath.txt"

# Check the application folder exists.
if [ "$1" = "" ]; then
    echo
    echo "Usage: $0 <folder name>"
    echo
    echo "e.g. $0 dc_common"
    exit
fi

# treat unset variables as an error when substituting.
set -u

# Make sure the application folder exists.`
FOLDER_NAME=$1
if [ ! -d "$FOLDER_NAME" ]; then
    echo Error: Application folder $FOLDER_NAME does not exist...
    exit
fi

# Change into the application folder.
cd $FOLDER_NAME
echo Application folder:
pwd

# Create the virtual environment (if it does not already exist).
if [ -d "$VIRTUAL_ENV_FOLDER" ]; then
    echo Virtual environment $VIRTUAL_ENV_FOLDER already exists...
else
    echo Creating virtual environment in $VIRTUAL_ENV_FOLDER
    virtualenv --no-site-packages $VIRTUAL_ENV_FOLDER
fi

# Enable the virtual environment.
set +u
source ./$VIRTUAL_ENV_FOLDER/bin/activate
set -u

# Install the dependencies.
pip install -r requirements.txt

# Set PYTHONPATH (if 'dev_pythonpath.txt' contains any folder names).
PYTHONPATH=$(python ../build_pythonpath.py $DEV_PYTHONPATH_FILE)
if [ ! -z "$PYTHONPATH" ]; then
    export PYTHONPATH
    echo PYTHONPATH=$PYTHONPATH
else
    echo No additions to PYTHONPATH: $DEV_PYTHONPATH_FILE does not exist in the $FOLDER_NAME folder.
fi

set +e
# Run the Django tests.
echo Run Django tests using the django_jenkins application.
./example/manage.py jenkins
if [ $? != 0 ]; then
    echo '********************************************************************'
    echo 'Django Jenkins test command failed...'
    echo
    echo 'Do you have valid tests for this application?'
    echo
    echo 'Try running ./example/manage.py test from the command line and make'
    echo 'sure some tests are running...'
    echo '********************************************************************'
    exit 1
else
    echo Build complete...
fi


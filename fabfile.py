"""
For atomic rename of folders (using symlinks), see:
https://github.com/reverie/django-fabfile/blob/master/fabfile.py
"""

import os

from fabric.api import env
from fabric.api import local
from fabric.api import run
from fabric.api import sudo
from fabric.api import task
from fabric.colors import green
#from fabric.contrib.project import rsync_project

env.html_folder = 'build/html/'

#env.hosts = ['rex.pkimber.net',]
#env.remote_sync_folder = '/home/patrick/repo/sync/www'
#env.remote_www_folder = '/var/www/pkimber.net'
#env.remote_www_temp_folder = os.path.join(env.remote_www_folder, 'sync')

env.FOLDERS = (
    '_downloads',
    'info',
    '_images',
    '_sources',
    '_static',
)


def clean():
    local('make clean html')


@task
def sync():
    folder = '/home/web/repo/project/pkimber_net/howto'
    run('find %s/ -type d -exec chmod 0755 {} \;' % folder)
    run('find %s/ -type f -exec chmod 0755 {} \;' % folder)
    print(green('complete'))

#@task
#def sync():
#    print(green('create remote sync folder'))
#    run('mkdir -p %s' % env.remote_sync_folder)
#    print(green('sync'))
#    # files will be skipped if they have the same size, regardless of timestamp.
#    extra_opts = '--size-only'
#    # Default rsync options:
#    # -pthrvz
#    # -p preserve permissions
#    # -t preserve times
#    # -h output numbers in a human-readable format
#    # -r recurse into directories
#    # -v increase verbosity
#    # -z compress file data during the transfer
#    rsync_project(
#        remote_dir=env.remote_sync_folder,
#        local_dir=env.html_folder,
#        delete=True,
#        extra_opts=extra_opts
#    )
#
#    print(green('create remote temp folder'))
#    sudo('mkdir -p %s' % env.remote_www_temp_folder)
#    print(green('copy sync to temp'))
#    sudo('cp -r %s/* %s/' % (env.remote_sync_folder, env.remote_www_temp_folder))
#    print(green('permissions'))
#    sudo('find %s/ -type d -exec chmod 0755 {} \;' % env.remote_www_temp_folder)
#    sudo('find %s/ -type f -exec chmod 644 {} \;' % env.remote_www_temp_folder)
#    print(green('update site'))
#    for sub_folder in env.FOLDERS:
#        sudo('rm -r %s/' % os.path.join(env.remote_www_folder, sub_folder))
#        sudo('mv %s %s' % (os.path.join(env.remote_sync_folder, sub_folder), env.remote_www_folder))
#    sudo('mv %s/* %s' % (env.remote_sync_folder, env.remote_www_folder))
#    print(green('complete'))

Threads
*******

.. highlight:: c++

Links
=====

- http://www.boost.org/doc/html/threads.html

Sample
======

Thread Class
------------

Create a simple class for the thread.  In this example the ``Build`` function
will be run inside a thread):

::

  class MyThreadClass
  {
  public:
    MyThreadClass();
    virtual ~MyThreadClass();

    bool Build();
  };

Main Class
----------

Create the class which will start the thread:

::

  #include <boost/bind.hpp>
  #include <boost/shared_ptr.hpp>
  #include <boost/thread/thread.hpp>

  class MyRunnerClass
  {
  public:
    MyRunnerClass(CSLPropertySheet * parent);
    virtual ~MyRunnerClass();

  private:
    MyThreadClass ThreadClass;

    boost::shared_ptr<boost::thread> BuildThread;

    void BuildStart();

  };

Run
---

To start the thread:

::

  void MyRunnerClass::BuildStart()
  {
    BuildThread = boost::shared_ptr<boost::thread>(new boost::thread(boost::bind(&MyThreadClass::Build, ThreadClass)));
  }


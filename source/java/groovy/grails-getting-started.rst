Grails - Getting Started
************************

Scaffolding
===========

- Create e.g. ``bookapp``:

  ::

    grails create-app
    cd bookapp

  Note: Database settings can be found here, :doc:`grails-database`.

- Run

  ::

    grails run-app

- Test

  Browse to http://localhost:8080/bookapp

- Create a domain object e.g. ``Book`` (a domain class is a persistent artifact
  and all properties are by default persisted to the database):

  ::

    grails create-domain-class

- Edit the domain object:

  ::

    grails-app/domain/Book.groovy

  ::

    class Book {
        String title
        String author
    }

- Test Data

  You can create some test data, by editing ``BootStrap.groovy``:

  ::

    grails-app\conf\BootStrap.groovy

  ::

    class BootStrap {

         def init = { servletContext ->
            // Create some test data
            new Book(author:"Stephen King",title:"The Shining").save()
            new Book(author:"James Patterson",title:"Along Came a Spider").save()
         }
         def destroy = {
         }
    }

- Create a controller e.g. ``Book``.

  ::

    grails create-controller

  Controllers are central to Grails applications they handle web requests and
  URLs of the request map to a controller class and a closure within the
  class.

- Edit the controller:

  ::

    grails-app\controllers\BookController.groovy

  ::

    class BookController {
        def scaffold = Book
    }

    Note:

  - Make sure that you typed ``Book`` with a capital ``B``.
  - You will need to remove or comment out the ``def index = { }`` from the
    generated file for the scaffolding to work.
  - Alternatively, you could also have run ``grails generate-all``, which
    creates all the scaffolding for you, and left the generated controller
    alone, instead of replacing it with the default scaffolding
    (http://www.grails.org/Quick+Start).

- Run

  ::

    grails run-app

  Note:

  To run with the production database environment (see
  ``grails-app/conf/DataSource.groovy``):

  ::

    grails prod run-app

- Test

  Browse to http://localhost:8080/bookapp/book/list


Logging
*******

Configuration
=============

See JBoss - Application Server, :doc:`../jboss/jboss-as` notes on logging.

Sample
======

::

  import org.jboss.seam.annotations.Logger;

  public class Action implements IAction {

      @Logger
      private Log log;

      public String add() {
          log.debug("add()");


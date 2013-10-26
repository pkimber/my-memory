Open Source Testing Tools in Practice - PyCon UK 2008 - Mark Fink
*****************************************************************

Prerequisites
=============

- One button build.
- One button installation.
- One button start/stop installation.
- Preparation of test environment.
- Mocks (independant from other apps e.g. downtimes, release).

Load Testing
============

- Instrumentation of application.
- Logfile parser (reports, response time, slow requests, errors).
- Production statistics.
- Monitoring CPU + Memory consumption.
- Create (JMeter) test plan, JMeter plugin, determine baseline.
- Bottleneck Analysis
- Data export/generator
- Reporting (BIRT Eclipse plugin).
- (Oracle Statspack) = what are the database resources used for.
- What went wrong (GUI was not included in the beginning).

Continuous Integration
======================

- Cruise Control automatically builds every 10 minutes after checking in
  source files.
- Execute a basic set of unit tests.
- Deploy application and execute a basic set of functional tests.
- In case of failure, send report to the developer.

Acceptance Testing
==================

- Tester tests if the right application was built.
- Use domain specific language for unit testing:  Action words and tabular
  format of test cases.
- Automated acceptance tests (FIT/Fitnesse) can be executed before every
  release/bugfix.


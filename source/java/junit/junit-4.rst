JUnit 4
*******

Annotations
===========

==================================================  ===========================================================================================================================================================
**Annotation**                                      **Description**
==================================================  ===========================================================================================================================================================
``@Test public void method()``                      Annotation ``@Test`` identifies that this method is a test method.
``@Before public void method()``                    Will perform the method() before each test. This method can prepare the test environment, e.g. read input data, initialize the class)
``@After public void method()``                     Test method must start with test
``@BeforeClass public void method()``               Will perform the method before the start of all tests. This can be used to perform time intensive activities for example be used to connect to a database
``@AfterClass public void method()``                Will perform the method after all tests have finished.. This can be used to perform clean-up activities for example be used to disconnect to a database
``@Ignore``                                         Will ignore the test method, e.g. useful if the underlying code has been changed and the test has not yet been adapted.
``@Test(expected=IllegalArgumentException.class)``  Tests if the method throws the named exception
``@Test(timeout=100)``                              Fails if the method takes longer then 100 milliseconds
==================================================  ===========================================================================================================================================================


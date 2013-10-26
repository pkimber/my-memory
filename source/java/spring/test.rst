Test
****

Sample
======

::

  import org.springframework.test.AbstractDependencyInjectionSpringContextTests;

  public final class ProcessSMSMessageTaskTest extends
          AbstractDependencyInjectionSpringContextTests {

      private static final String SPRING_CONFIG =
          "classpath:/test/config/process_sms_message_task_test.xml";

      @Override
      protected String[] getConfigLocations() {
          return new String[] { SPRING_CONFIG };
      }


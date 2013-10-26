Snippets
********

imports
=======

::

  import static org.mockito.Matchers.any;
  import static org.mockito.Matchers.anyLong;
  import static org.mockito.Matchers.anyString;
  import static org.mockito.Matchers.eq;
  import static org.mockito.Mockito.mock;
  import static org.mockito.Mockito.when;

Simple
======

::

  final MyServicesModule module = mock(MyServicesModule.class);

Parameter
=========

::

  final MyServicesModule module = mock(MyServicesModule.class);
  when(module.getMessage(anyString(), eq("cheese"))).thenReturn("cheddar");

Parameters with ArgumentCaptor
==============================

::

  private ArgumentCaptor<String> argument;
  argument = ArgumentCaptor.forClass(String.class);

  final MyServicesModule module = mock(MyServicesModule.class);
  when(module.getMessages(any(DataSource.class), anyString(),
          anyString(), anyLong())).thenReturn(getMessage());
  when(module.createMessage(argument.capture(),
          anyString(), anyString(), anyString(), any(Network.class),
          any(DataSource.class))).thenReturn(new Integer(1));

  assertEquals("cheese", argument.getValue());


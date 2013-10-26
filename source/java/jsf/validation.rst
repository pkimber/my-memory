Validation
**********

::

  <!-- User must input something and -->
  <!-- text must be between 2 and 10 chars in length -->
  <h:inputText value="#{globalSettingsBean.personName}" required="true">
      <f:validateLength minimum="2" maximum="10"/>
  </h:inputText>

::

  <!-- User must input something -->
  <!-- and it must be a number between 0 and 100 -->
  <h:inputText value="#{globalSettingsBean.personAge}" required="true">
      <f:validateLongRange minimum="0" maximum="100"/>
  </h:inputText>

::

  <!-- How to get messages from a jsf properties file AND -->
  <!-- How to send a message back to the page -->
  // get a reference to properties file to retreive messages
  FacesContext context = FacesContext.getCurrentInstance();
  ResourceBundle bundle = ResourceBundle.getBundle("game.messages",
      context.getViewRoot().getLocale());
  String msg = "";
  // if number bigger, get appropriate message
  if ( userNumber.intValue() > randomNumber )
      msg = bundle.getString("tryagain_smaller");
  else // if number smaller, get appropriate message
      msg = bundle.getString("tryagain_bigger");
  // add message to be displayed on the page via <h:messages> tag
  context.addMessage (null, new FacesMessage(msg));


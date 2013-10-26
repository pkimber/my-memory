Components
**********

Links
=====

- http://myfaces.apache.org/tlddoc/tomahawk/t/tld-summary.html

Namespace
=========

Added a namespace with a prefix of ``t`` to the ``jsp`` page:

::

  <%@ taglib uri="http://myfaces.apache.org/tomahawk" prefix="t"%>

Input Date
==========

http://myfaces.apache.org/tomahawk/inputDate.html

Wanted to use the date component...

Add the myfaces namespace declaration (see above).

Added a simple managed bean to ``examples-config.xml``:

::

  <managed-bean>
      <managed-bean-name>date1</managed-bean-name>
      <managed-bean-class>java.util.Date</managed-bean-class>
      <managed-bean-scope>request</managed-bean-scope>
  </managed-bean>

Add the component to the page:

::

  <t:inputDate id="date1" value="#{date1}" popupCalendar="true"/>

Brilliant - It works!!


DataTable
=========

http://myfaces.apache.org/tomahawk/extDataTable.html

Add the myfaces namespace declaration (see above).

Create a class to represent each row in the data table:

::

  public final class PersonBacking {
      private String name;
      private int age;

      public PersonBacking() { }
      public PersonBacking(final String namePerson, final int agePerson) {
          name = namePerson;
          age = agePerson;
      }

      public String getName() {
          return name;
      }
      public int getAge() {
          return age;
      }
  }

Then create a class which returns a list of these items:

::

  public final class FamilyBacking {
      private List family = new ArrayList();
      private static final int AGE_41 = 41;
      private static final int AGE_18 = 18;
      private static final int AGE_14 = 14;

      public FamilyBacking() {
          family.add(new PersonBacking("Peter", AGE_41));
          family.add(new PersonBacking("Alison", AGE_41));
          family.add(new PersonBacking("Barry", AGE_18));
          family.add(new PersonBacking("Martin", AGE_14));
      }

      public List getFamily() {
          return family;
      }
  }

Add the two classes as managed beans in ``examples-config.xml``:

::

  <managed-bean>
      <managed-bean-name>person</managed-bean-name>
      <managed-bean-class>org.apache.myfaces.blank.PersonBacking</managed-bean-class>
      <managed-bean-scope>request</managed-bean-scope>
  </managed-bean>

  <managed-bean>
      <managed-bean-name>family</managed-bean-name>
      <managed-bean-class>org.apache.myfaces.blank.FamilyBacking</managed-bean-class>
      <managed-bean-scope>request</managed-bean-scope>
  </managed-bean>

Add the component to the page:

::

  <t:dataTable id="data"
    var="person"
    value="#{family.family}"
    preserveDataModel="false" >
    <h:column>
      <f:facet name="header">
        <h:outputText value="Name" />
      </f:facet>
      <h:outputText value="#{person.name}" />
      </h:column>
      <h:column>
        <f:facet name="header">
          <h:outputText value="Age" />
        </f:facet>
      <h:outputText value="#{person.age}" />
    </h:column>
  </t:dataTable>

**Note**: The ``var`` attribute of the ``dataTable`` must match the bean name
(in this example ``person``).

Kupu Editor
===========

See http://www.irian.at/myfaces/inputHtml.jsp.source

I added the following inside a form component:

::

  <t:inputHtml value="#{noteBacking.note}" style="height: 60ex;"/>

And it worked first time!


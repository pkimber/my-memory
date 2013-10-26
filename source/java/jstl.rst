JSTL
****

JavaScript
==========

To pass a JSP variable to a JavaScript method (where
``${model.toolTips['description']}`` is the variable):

::

  onmouseover="Tip('<c:out value="${model.toolTips['description']}"/>')"

Utility
=======

::

  <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
  <html>
  <body>
  <head>
  <title>Parameter Listing Example</title>
  </head>
  <br>
  <b>Parameter values passed to this page for each parameter: </b>
  <table border="2">
  <c:forEach var="current" items="${param}">
      <tr>
      <td>
      <b><c:out value="${current.key}" /></b>
      </td>
          <c:forEach var="aVal" items="${paramValues[current.key]}">
              <td>
              <c:out value="${aVal}" />
              </td>
          </c:forEach>
      </tr>
  </c:forEach>
  </table>
  </body>
  </html>

select
======

::

  <label for="product_type">Product Type :</label>
  <select name="product_type">
    <c:forEach var="item" items="${model.code.products}">
      <option value = "
        <c:out value="${item.key}"/>
      ">
        <c:out value="${item.value}"/>
      </option>
    </c:forEach>
  </select>


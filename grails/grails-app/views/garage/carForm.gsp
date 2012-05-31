<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <meta name="layout" content="main" />
    <title>New car</title>
  </head>
  <body>
    Add new car
    <g:form controller="garage" action="saveCar">
      <table>
        <tr>
          <td>Mark</td><td><g:select name="mark" from="${['Mitsubishi', 'Ford']}" noSelection="['' : '- Please select -']" /></td>
        </tr>
        <tr>
          <td>Model</td><td><g:select name="model" from="${['Charisma', 'Mustang']}" noSelection="['' : '- Please select -']" /></td>
        </tr>
        <tr>
          <td>Year</td><td><g:select name="year" from="${['1998', '2005']}" noSelection="['' : '- Please select -']" /></td>
        </tr>
        <tr>
          <td></td><td><g:submitButton name="Save" /></td>
        </tr>
      </table>
    </g:form>
  </body>
</html>

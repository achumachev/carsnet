<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <meta name="layout" content="main" />
    <title>Register</title>
  </head>
  <body>
    Register for free
    <g:form controller="auth" action="register">
      <table>
        <tr>
          <td>email</td><td><g:textField name="email" /></td>
        </tr>
        <tr>
          <td>Name</td><td><g:textField name="name" /></td>
        </tr>
        <tr>
          <td>Password</td><td><g:passwordField name="password" /></td>
        </tr>
        <tr>
          <td>Confirm</td><td><g:passwordField name="confirm" /></td>
        </tr>
        <tr>
          <td></td><td><g:submitButton name="Save" /></td>
        </tr>
      </table>
    </g:form>
  </body>
</html>

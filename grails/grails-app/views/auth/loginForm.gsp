<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <meta name="layout" content="main" />
    <title>Login</title>
  </head>
  <body>

    <g:form controller="auth" action="login">
      <table>
        <tr>
          <td>email</td><td><g:textField name="email" /></td>
        </tr>
        <tr>
          <td>Password</td><td><g:passwordField name="password" /></td>
        </tr>
        <tr>
          <td></td><td><g:submitButton name="Login" /></td>
        </tr>
      </table>
    </g:form>
  </body>
</html>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <meta name="layout" content="main" />
    <title>Profile settings</title>
  </head>
  <body>
    <h1>Change profile</h1>

    <div class="content">
      <g:form controller="profile" action="save">
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
    </div>
  </body>
</html>

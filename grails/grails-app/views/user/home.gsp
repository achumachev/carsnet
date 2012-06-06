<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <meta name="layout" content="main" />
    <title>Users personal page</title>
  </head>
  <body>
    <h1>Welcome back</h1>

    <div class="content">
      Current car: <g:link controller="garage" action="showCar" id="1">Mitsubishi Charisma 1997</g:link>
      <br />
      <g:link controller="garage" action="carForm">Add more car</g:link>
    </div>

  </body>
</html>

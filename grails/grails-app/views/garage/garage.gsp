<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <meta name="layout" content="main" />
    <title>Users Garage</title>
  </head>
  <body>
    <h1>Garage</h1>

    <div class="content">
      <ul>
        <li>Current <g:link controller="garage" action="showCar" id="1">Mitsubishi Charisma 1997</g:link></li>
        <li><g:link controller="garage" action="showCar" id="2">Ford Mustang 2005</g:link></li>
        <li><g:link controller="garage" action="carForm">Add more</g:link></li>
      </ul>
    </div>
  </body>
</html>

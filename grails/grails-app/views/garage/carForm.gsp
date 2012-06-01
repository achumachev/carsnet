<%@ page import="com.carsnet.utils.CarsContainer" contentType="text/html;charset=UTF-8" %>
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
          <td>Mark</td>
          <td>
            <g:select name="mark" from="${CarsContainer.CARS}" value="${selectedMark}"
                      noSelection="['' : '- Please select -']" />
          </td>
        </tr>
        <tr>
          <td>Model</td>
          <td>
            <select name="model">
              <option value="635050783">3000 GT</option>
              <option value="4074660625">ASX</option>
              <option value="2694898892">Carisma</option>
              <option value="316977277">Colt</option>
              <option value="640241908">Eclipse</option>
              <option value="385586272">Galant</option>
              <option value="800831102">Grandis</option>
              <option value="1205962102">I</option>
              <option value="741187822">L300</option>
              <option value="3729149170">Lancer</option>
              <option value="261645537">Outlander</option>
              <option value="1921441027">Pajero</option>
              <option value="3234673613">Pajero Classic</option>
              <option value="1706893215">Pajero Pini</option>
              <option value="756274310">Pajero Sport</option>
              <option value="1881843434">Sigma</option>
              <option value="2940255858">Space Gear</option>
              <option value="3603253482">Space Runner</option>
              <option value="2335833218">Space Star</option>
              <option value="2969051353">Space Wagon</option>
            </select>
            %{--<g:select name="model" from="${['Charisma', 'Mustang']}" noSelection="['' : '- Please select -']" />--}%
          </td>
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

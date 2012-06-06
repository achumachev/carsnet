<%@ page import="com.carsnet.utils.CarsContainer" contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <meta name="layout" content="main" />
    <title>New car</title>
    <r:require modules="jquery" />
  </head>
  <body>
    <h1>Add new car</h1>
    <div class="content">
      <g:form controller="carCreate" action="saveCar">
        <table>
          <tr>
            <td>Mark</td>
            <td>
              <g:select name="brand" from="${allBrands}" value="${selectedBrand}"
                        optionKey="name" optionValue="name" noSelection="['' : '- Please select -']" />
            </td>
          </tr>
          <tr>
            <td>Model</td>
            <td>
              <g:select name="model" from="${models}" optionKey="name" optionValue="name"
                        noSelection="['' : '- Please select -']" />
            </td>
          </tr>
          <tr>
            <td>Year</td>
            <td>
              <g:select name="year" from="${[]}" noSelection="['' : '- Please select -']" />
            </td>
          </tr>
          <tr>
            <td></td><td><g:submitButton name="Save" /></td>
          </tr>
        </table>
      </g:form>
    </div>

    <script type="text/javascript">
      $(document).ready(function() {
        $('select[name="model"]').change(function() {
          jQuery.ajax({
            type: 'POST',
            url: '/carCreate/getModelYears',
            success: function(data, textStatus) {
              var select = $('select[name="year"]');
              select.empty();

              $('<option value="">- Please select -</option>').appendTo(select);
              jQuery.each(data, function(i, m) {
                $('<option value="' + m + '">' + m + '</option>').appendTo(select)
              });
            },
            data: {
              brand: $('select[name="brand"]').val(),
              model: $('select[name="model"]').val()
            }
          })
        });

        $('select[name="brand"]').change(function() {
          jQuery.ajax({
            type: 'POST',
            url: '/carCreate/getModels',
            success: function(data, textStatus) {
              var select = $('select[name="model"]');
              select.empty();

              $('<option value="">- Please select -</option>').appendTo(select);
              jQuery.each(data, function(i, m) {
                $('<option value="' + m + '">' + m + '</option>').appendTo(select)
              });
            },
            data: {
              brand: $('select[name="brand"]').val()
            }
          })
        });
      });
    </script>

  </body>
</html>

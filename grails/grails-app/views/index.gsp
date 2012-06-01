<%@ page import="com.carsnet.utils.CarsContainer" %>
<!doctype html>

<html>
	<head>
		<meta name="layout" content="main" />
		<title>Welcome to CarsNet.com</title>
    <r:require modules="jquery" />
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'carousel.css')}" type="text/css" />
	</head>
	<body>
		<h1>Welcome to CarsNet.com</h1>
    <p>
      <g:link controller="auth" action="loginForm">Login</g:link> or
      <g:link controller="auth" action="registerForm">Register</g:link>
    </p>
    <br />
    <br />

    <h3 style="text-align: center">Start building your car from most popular brands</h3>

    <div class="carousel">
      <a class="prev">&laquo; Previous</a>

      <div class="wrapper">
        <div class="items">
          <g:each in="${CarsContainer.FEATURED}" var="car">
            <div class="item">
              <g:link controller="garage" action="carForm" params="[mark: car]">
                <img src="/images/cars/${car}.jpg" alt="${car}" />
              </g:link>
            </div>
          </g:each>
        </div>
      </div>

      <a class="next">Next &raquo;</a>
    </div>

    <script src="/js/jquery.tools.min.js" type="text/javascript" ></script>
    <script type="text/javascript">
      $(function() {
        $(".carousel")
          .scrollable({
            circular: true,
            mousewheel: true,
            //vertical: true,
            speed: 600
          })
      });

      $(document).ready(function() {
        var curpanes = $('.wrapper');
        $(curpanes).height($(curpanes).find('.items').height());
      });
    </script>
	</body>
</html>

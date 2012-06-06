<!doctype html>

<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title><g:layoutTitle default="CarsNet.com"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon" />
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css" />
		<g:layoutHead/>
    <r:layoutResources />
	</head>

	<body>
    <div class="header-toolbar">
      <g:link controller="userHome" action="index">Home</g:link> |
      <g:link controller="garage" action="index">Garage</g:link> |
      <g:link controller="profile" action="index">Profile</g:link>

      <g:link controller="auth" action="logout" class="logout">Logout</g:link>
    </div>

    <div class="logo">
      <g:link controller="main" action="index">
        <img src="${resource(dir: 'images', file: 'logo.png')}" alt="CarsNet.com" />
      </g:link>
    </div>

    <div class="body-content">
      <g:layoutBody/>
    </div>

    <div class="footer" role="contentinfo">
      Copyright
    </div>

    <div id="spinner" class="spinner" style="display:none;">
      <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <g:javascript library="application"/>
    <r:layoutResources />
	</body>
</html>

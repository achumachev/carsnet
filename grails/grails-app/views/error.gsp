<!doctype html>

<html>
	<head>
		<title>Internal error</title>
		<meta name="layout" content="main" />
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'errors.css')}" type="text/css" />
	</head>
	<body>
		<g:renderException exception="${exception}" />
	</body>
</html>

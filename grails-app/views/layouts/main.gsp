<!DOCTYPE html>
<html lang="en">
<head>
	<title><g:layoutTitle default="Home" /> // UNPLEXING</title>
	<meta charset="utf-8" />
	<meta name="author" content="Adam Presley,Jesse Roach">
	<meta name="description" content="UNPLEXING, the art of simply software engineering." />

	<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" />

	<!--[if lt IE 9]>
		<script src="${resource(dir: 'js', file: 'html5.js')}"></script>
	<![endif]-->

	<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.7.2.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'js', file: 'bootstrap.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'js', file: 'application.js')}"></script>

	<g:layoutHead />
	<r:layoutResources />
</head>

<%! import grails.util.GrailsUtil; %>

<body>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
			
				<a class="brand" href="/"><span class="orange">UN</span>PLEXING</a>

				<div class="nav-collapse">
					<ul class="nav">
						<li<g:if test="${request.forwardURI == '/'}"> class="active"</g:if>><a href="/">Home</a></li>
						<li<g:if test="${request.forwardURI == '/about'}"> class="active"</g:if>><a href="/about">About</a></li>
						<li<g:if test="${request.forwardURI == '/illustrate'}"> class="active"</g:if>><a href="/illustrate">Illustrate</a></li>
						<li<g:if test="${request.forwardURI == '/media'}"> class="active"</g:if>><a href="/media">Media</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span11"><g:layoutBody/></div>
		</div>

		<hr />

		<footer>
			<p>&copy; Adam Presley and Jesse Roach, ${new Date().format("yyyy")}</p>

			<section style="text-align: center; margin-top: 30px;">
				Runs on <a href="jelastic.com">Jelastic - Rock-solid Java in the Cloud</a><br />
				<a href="http://www.servint.net/index.php?refid=AEB927585973"><img alt="Hosted by ServInt" src="http://img.servint.net/180x60-hostedby.jpg" border=0></a><br />
				<img src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Built on Grails" />
		</footer>
	</div>

	<g:if test="${GrailsUtil.environment == 'production'}">
		<script type="text/javascript">

			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-30469718-1']);
			_gaq.push(['_setDomainName', 'codedayspa.com']);
			_gaq.push(['_trackPageview']);

			(function() {
				var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			})();

		</script>
	</g:if>

	<r:layoutResources />
</body>
</html>
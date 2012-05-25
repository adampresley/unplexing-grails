modules = {
	core {
		resource url: [dir: "css", file: "bootstrap.css"], disposition: "head"
		resource url: [dir: "css", file: "bootstrap-responsive.css"], disposition: "head"
		resource url: [dir: "css", file: "main.css"], disposition: "head"

		resource url: [dir: "js", file: "html5.js"], disposition: "head", wrapper: { s ->
			"<!--[if lt IE 9]>$s<![endif]-->"
		}
		
		resource url: [dir: "js", file: "jquery-1.7.2.js"], disposition: "head"
		resource url: [dir: "js", file: "bootstrap.js"], disposition: "head"
		resource url: [dir: "js", file: "application.js"]
	}
}
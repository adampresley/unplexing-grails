class UrlMappings {
	static mappings = {
		"/"(view: "/index")
		"/about"(view: "/about")
		"/illustrate"(view: "/illustrate")
		"/media"(view: "/media")

		"500"(view:"/error")
		"404"(view:"/404")
	}
}

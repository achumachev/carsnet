class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/" (controller: 'main', action: 'index')
		"500" (controller: 'main', action: 'error')
    "404" (controller: 'main', action: 'nopage')
    "/status" (controller: 'main', action: 'status')
	}
}

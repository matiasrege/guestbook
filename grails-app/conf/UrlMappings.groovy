class UrlMappings {
    static mappings = {
      "/$controller/$action?/$id?"{
	      constraints {
			 // apply constraints here
		  }
	  }
      "/"(controller:"message", action:[GET:"index", POST:"create"])
	  "500"(view:'/error')
	}
}

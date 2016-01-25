package wedding

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/guest/rsvp" (controller: "guest", parseRequest: true) {
            action = [POST: "rsvp"]
        }

        "/"(view:"/oldhome")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}

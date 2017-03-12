import Vapor

let drop = Droplet()

drop.get { req in
    return try drop.view.make("welcome", [
    	"message": drop.localization[req.lang, "welcome", "title"]
    ])
}


drop.get("Micha") { req in
    return "Micha hat glaub ich eine 1"
}


drop.resource("posts", PostController())

drop.run()

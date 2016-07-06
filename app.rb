require("sinatra")
require("sinatra/reloader")
require("lib/**/*.rb")
require("./lib/places")

get("/") do
  @places = Places.list()
  erb(:index)
end

post("/places") do
  destination = params.fetch("destination")
  place = Places.new(destination)
  place.save()
  erb(:results)
end

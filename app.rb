require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/parcel")

get("/") do
  erb(:index)
end

get("/results") do
  length = params.fetch("length").to_i()
  width = params.fetch("width").to_i()
  depth = params.fetch("depth").to_i()
  @weight = params.fetch("weight").to_i()

  @parcel = Parcel.new(length, width, depth, @weight)
  erb(:results)
end

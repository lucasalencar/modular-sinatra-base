require "./config/boot"

# Matches all the routes to its Controllers
# through the regexp pattern specified
Routes = Rack::Mount::RouteSet.new do |set|
  set.add_route ApplicationController, path_info: %r{^/}
  set.add_route ExampleController, path_info: %r{^/example*}
end
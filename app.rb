require "./config/boot"

def route_name(path)
  path.split('/').last.gsub('_controller.rb','')
end

def controller_name(route)
  Kernel.const_get("#{route.camelize}Controller")
end

EXCEPTIONS = %w[application]

# Matches all the routes to its Controllers
# through the regexp pattern specified
Routes = Rack::Mount::RouteSet.new do |set|
  Dir[File.expand_path("../controllers/**/*", __FILE__)].reverse.each do |controller|
    route = route_name(controller)
    unless EXCEPTIONS.include?(route)
      set.add_route controller_name(route), path_info: %r{^/#{route}}
    end
  end
  set.add_route ApplicationController, path_info: %r{^/*}
end
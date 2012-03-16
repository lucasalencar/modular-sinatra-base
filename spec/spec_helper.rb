ENV["RACK_ENV"] = "test"

require File.dirname(__FILE__) + "/../app"

require 'rack/test'

require "webrat"

require "factory_girl"
require "factories"

Webrat.configure do |config|
	config.mode = :rack
end

RSpec.configure do |config|
 	config.include Rack::Test::Methods
 	config.include Webrat::Methods
 	config.include Webrat::Matchers

	def app
		Sinatra::Application
	end
end
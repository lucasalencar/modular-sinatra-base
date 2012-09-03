ENV["RACK_ENV"] = "test"

require File.dirname(__FILE__) + "/../app"

RSpec.configure do |config|
 	config.include Rack::Test::Methods

	def app
		Sinatra::Application
	end
end
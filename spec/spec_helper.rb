ENV["RACK_ENV"] = "test"

require File.dirname(__FILE__) + "/../app"

Capybara.app = Sinatra::Application

RSpec.configure do |config|
 	config.include Rack::Test::Methods
 	config.include Capybara

	def app
		Sinatra::Application
	end
end
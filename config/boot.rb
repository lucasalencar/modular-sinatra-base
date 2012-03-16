require "bundler"
Bundler.setup(:default, ENV.fetch("RACK_ENV", :development))
Bundler.require
Bundler.require(:console)
Wirb.start
Hirb.enable

Mongoid.configure do |config|
	config.logger = nil
	config.raise_not_found_error = nil
end

if Sinatra::Base.development?
	require "factory_girl"
	require "./spec/factories"
end

require File.expand_path("../environment", __FILE__)

Mongoid.load!(File.expand_path("../mongoid.yml", __FILE__))

Dir[File.expand_path("../../models/**/*", __FILE__)].each { |model| require model }

Dir[File.expand_path("../../helpers/**/*", __FILE__)].each { |helper| require helper }


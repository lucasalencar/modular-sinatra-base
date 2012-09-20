require "bundler"
Bundler.setup
Bundler.require(:default, :console, ENV.fetch("RACK_ENV", :development))
Wirb.start
Hirb.enable

require File.expand_path("../environment", __FILE__)

Dir[File.expand_path("../../models/**/*", __FILE__)].each { |model| require model }

set :database, "sqlite:///#{Sinatra::Base.environment}.db"

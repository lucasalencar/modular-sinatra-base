require "bundler"
Bundler.setup
Bundler.require(:default, :console, ENV.fetch("RACK_ENV", :development))
Wirb.start
Hirb.enable

require File.expand_path("../environment", __FILE__)

Dir[File.expand_path("../../models/**/*", __FILE__)].each { |model| require model }

# Loads configurations of the database and establish a connection
require "yaml"
db_file_path = File.expand_path('../database.yml', __FILE__)
dbconfig = YAML::load(File.open(db_file_path))
ActiveRecord::Base.establish_connection(dbconfig)
require "bundler"
Bundler.setup
Bundler.require(:default, :console, ENV.fetch("RACK_ENV", :development))
Wirb.start
Hirb.enable

require File.expand_path("../environment", __FILE__)

def require_folder(path)
  Dir[File.expand_path("../#{path}/**/*", __FILE__)].each { |file| require file }
end

require_folder("../models")
require_folder("../controllers")
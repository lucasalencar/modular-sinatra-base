set :root, File.expand_path("../..", __FILE__)

set :public_folder, File.expand_path("../../public", __FILE__)

set :views, File.expand_path("../../views", __FILE__)

set :static, true

set :sessions, true

set :logging, true

set :dump_errors, Sinatra::Base.development?

set :raise_errors, Sinatra::Base.development?

require "sinatra/reloader" if Sinatra::Base.development?

source :rubygems

gem 'sinatra', "1.3.2"
gem 'mongoid', git: "git://github.com/mongoid/mongoid.git"
gem "bson_ext", "1.6.1"
gem "thin"

group :development, :test do
	gem "sinatra-reloader", require: "sinatra/reloader"
	gem "pry"
	gem "racksh"
end

group :console do
	gem "awesome_print"
	gem "hirb"
	gem "wirb"
end

group :test do
  gem "rspec"
  gem "rack-test", require: "rack/test"
  gem "factory_girl"
  gem "webrat"
end
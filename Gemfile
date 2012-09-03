source :rubygems

ruby "1.9.3"

gem 'sinatra', '1.3.3'
gem 'mongoid', '3.0.5'
gem 'unicorn', '4.3.1'

group :development, :test do
	gem 'sinatra-reloader', '1.0', require: 'sinatra/reloader'
	gem 'pry'
	gem 'racksh'
end

group :console do
	# gem 'awesome_print'
	gem 'hirb'
	gem 'wirb'
end

group :test do
  gem 'rspec', '2.11.0'
  gem 'rack-test', '0.6.1', require: 'rack/test'
end
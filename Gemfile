source :rubygems

ruby "1.9.3"

gem 'sinatra', '1.3.3'
gem 'sqlite3', '1.3.6'
gem 'unicorn', '4.3.1'
gem 'activerecord', '3.2.8'
gem 'sinatra-activerecord', '1.1.1', require: 'sinatra/activerecord'
gem 'rake', '0.9.2.2' # Used to rake tasks work on project directory

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
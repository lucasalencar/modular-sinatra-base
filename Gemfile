source :rubygems

ruby "1.9.3"

gem 'sinatra', '1.3.3', require: 'sinatra/base'
gem 'sqlite3', '1.3.6'
gem 'unicorn', '4.3.1'
gem 'activerecord', '3.2.8'
gem 'sinatra-activerecord', '1.1.2', require: 'sinatra/activerecord'
gem 'rake', '10.0.3' # Used to rake tasks work on project directory
gem 'rack-mount', '0.8.3', require: 'rack/mount'

group :development, :test do
	gem 'sinatra-contrib', '1.3.2', require: false
	gem 'pry'
	gem 'racksh'
end

group :console do
	gem 'hirb'
	gem 'wirb'
end

group :test do
  gem 'rspec', '2.12.0'
  gem 'rack-test', '0.6.2', require: 'rack/test'
end
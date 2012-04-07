source :rubygems

gem 'sinatra', '1.3.2'
gem 'mongoid', '2.4.7'
gem 'bson_ext', '1.6.1'
gem 'puma', '1.1.1'

group :development, :test do
	gem 'sinatra-reloader', '1.0', require: 'sinatra/reloader'
	gem 'pry', '0.9.8.4'
	gem 'racksh', '0.9.11'
end

group :console do
	gem 'awesome_print', '1.0.2'
	gem 'hirb', '0.6.2'
	gem 'wirb', '0.4.2'
end

group :test do
  gem 'rspec', '2.9.0'
  gem 'rack-test', '0.6.1', require: 'rack/test'
  gem 'factory_girl', '3.1.0'
  gem 'capybara', '1.1.2', require: 'capybara/rspec'
end
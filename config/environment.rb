Sinatra::Base.configure do |c|
  c.set :root, File.expand_path("../..", __FILE__)
  
  c.set :public_folder, File.expand_path("../../public", __FILE__)
  
  c.set :views, File.expand_path("../../views", __FILE__)
  
  c.enable :logging, :static, :sessions

  c.set :dump_errors, Sinatra::Base.development?

  c.set :raise_errors, Sinatra::Base.development?
  
  # Registers ActiveRecord Extension on Sinatra for rake tasks
  c.register Sinatra::ActiveRecordExtension
  
  c.set :database, "sqlite:///#{c.environment}.db"
end
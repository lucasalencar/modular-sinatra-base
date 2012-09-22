class ExampleController < Sinatra::Base
  get '/' do
    @message = "Have you requested an Example? Here it is!"
    erb :content
  end
  
  get '/:name' do
    @message = "Do you need a #{params[:name]}? This is not the place to look for it."
    erb :content
  end
end
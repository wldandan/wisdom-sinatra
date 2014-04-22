require 'sinatra'
require 'sinatra/reloader' if development?

get '/:name' do
	name=params[:name]
  	"hi there, this is from #{name}"
end


get '/hello' do
      "Hello Sinatra!"
end

get '/frank' do
  name = 'frank'
  "hello #{name}"
end



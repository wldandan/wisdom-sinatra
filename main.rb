require 'sinatra'
require 'sinatra/reloader' if development?
require 'sass'

get('/styles.css'){ scss :styles }

get '/' do
  title = "Hello World"
	erb :home
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end

not_found do
  erb :not_found
end

get '/fake-error' do
  status 500
end
require "bundler/setup"
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sass'

get('/styles.css'){ scss :styles }

get '/' do
  @menu="home"
	erb :home
end

get '/introduction' do
  @menu="introduction"
  erb :introduction
end

get '/teachers' do
  @menu="teachers"
  erb :teachers
end



get '/about' do
  @menu="about"
  erb :about
end

get '/contact' do
  @menu="contact"
  erb :contact
end

not_found do
  erb :not_found
end

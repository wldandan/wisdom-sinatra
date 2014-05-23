require "bundler/setup"
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sass'

get('/styles.css'){ scss :styles }

get '/' do
  @menu="home"
	erb :home
end

get '/introduction.html' do
  @menu="introduction"
  erb :introduction
end

get '/teacher-intro.html' do
  @menu="teacher-intro"
  erb :teacherintro
end

get '/class-intro.html' do
  @menu="class-intro"
  erb :classintro
end

get '/case-intro.html' do
  @menu="case-intro"
  erb :caseintro
end

get '/apply-online.html' do
  @menu="apply-online"
  erb :applyonline
end

get '/contact-us.html' do
  @menu="contact-us"
  erb :contactus
end

not_found do
  erb :not_found
end

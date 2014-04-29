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

get '/teacher-intro' do
  @menu="teacher-intro"
  erb "teacher-intro"
end

get '/class-intro' do
  @menu="class-intro"
  erb "class-intro"
end

get '/student-intro' do
  @menu="student-intro"
  erb "student-intro"
end

get '/apply-online' do
  @menu="apply-online"
  erb "apply-online"
end

get '/contact-us' do
  @menu="contact-us"
  erb "contact-us"
end

not_found do
  erb :not_found
end

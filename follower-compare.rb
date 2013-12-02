require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'

get '/' do
  	@name = "Elaine"
  	@show_description = true
  	erb :index
end

# Get request for the root url
get '/' do
  # your code goes here
end

# Post request for /twitter
post '/twitter' do
  # your code goes here
  @first_user = params[:first_user] 
  @second_user = params[:second_user]
  erb :result
end

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
  @first_hash = params[:first_hash] 
  @second_hash = params[:second_hash]
  erb :result
end

require 'rubygems'
require 'bundler/setup'
require_relative ../lib/follower-compare

client = Twitter::Client.new.configure do |config|
	config.consumer_key			= ENV['CONSUMER_KEY']
	config.consumer_secret		= ENV['CONSUMER_SECRET']
	config.oauth_token 			= ENV['OAUTH_TOKEN']
	config.oauth_token_secret	= ENV['OAUTH_TOKEN_SECRET']
end
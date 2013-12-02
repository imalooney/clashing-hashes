require 'rubygems'
require 'bundler/setup'
require 'twitter'
require_relative 'lib/follower-compare'
require 'rspec'

module UserComparer
	class User
		attr_reader :username, :followers

		def initialize(username, client)
			@username = username
			@client = client
		end

		def followers
	  	@client.user(@username).followers_count
		end

	end






	class Comparer
		def initialize(user1, user2)
			@user1 = user1
			@user2 = user2
		end

		def compare_followers
		  if @user1.followers > @user2.followers
		    @user1.username
		  elsif @user2.followers > @user1.followers
		    @user2.username
		  else
		    puts "These users have the same number of followers."
		  end
		end
	end

end
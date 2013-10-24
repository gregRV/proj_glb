class User < ActiveRecord::Base
	has_many :authorizations
	attr_accessible :username, :weeks_commits, :current_streak, :followers, :following

	def self.create_client(user)
  	@client = Octokit::Client.new(login: user.username, access_token: user.authorizations.first.token)
	end

	def update_user_network(client)
		clients_followers = client.followers.count
		clients_following = client.following.count
		clients_f_and_f = clients_followers + clients_following
		users_f_and_f = self.followers + self.following
		followers_and_following = []
		
		if clients_f_and_f != users_f_and_f
			User.update(self.id, followers: clients_followers, following: clients_following)
			
			client.followers.each do |f|
				followers_and_following << f[:login]
			end

			client.following.each do |f|
				followers_and_following << f[:login]
			end
		end

		followers_and_following.uniq.each do |username|
			user = User.find_by_username(username)
			unless user
				ap "CREATING NEW USER"
				User.create(username: username)
			end
		end
		ap "END OF UPDATE USER NETWORK"
	end
end
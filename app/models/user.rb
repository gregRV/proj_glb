class User < ActiveRecord::Base
  # attr_accessible :title, :body

  def self.find_or_create_from_auth_hash(auth_hash)
  	# check against database to find/create user
  end
end

class Authorization < ActiveRecord::Base
	belongs_to :user
	validates :provider, :uid, :presence => true

  attr_accessible :provider, :uid, :token

  def self.find_or_create_by_provider_and_uid(provider, uid)
  	@auth = Authorization.where(provider: provider, uid: uid).first
  end
end

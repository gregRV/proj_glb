class SessionsController < ApplicationController

  def new
  end

  def create
    authorization = Authorization.find_or_create_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
    if authorization
      user = User.find_by_username(authorization.user.username)
    else
      user = User.new :username => auth_hash[:info][:nickname]
      user.authorizations.build :provider => auth_hash[:provider], :uid => auth_hash[:uid], :token => auth_hash.credentials.token
      user.save
      client = User.create_client(user)
      User.update_user_network(client, user)
    end
    
    redirect_to user_path(user)
  end

  def failure
    render :text => "Sorry, but you didn't allow access to our app!"
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end

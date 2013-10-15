class SessionsController < ApplicationController

  def new
  end

  def create
    authorization = Authorization.find_or_create_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
    if authorization
      user = User.find_by_name(authorization.user.name)
    else
      user = User.new :name => auth_hash[:info][:nickname]
      user.authorizations.build :provider => auth_hash[:provider], :uid => auth_hash[:uid]
      user.save 
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

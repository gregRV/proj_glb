class SessionsController < ApplicationController

  def new
  end
  
  def create
    @user = User.find_or_create_from_auth_hash(auth_hash)
    puts '*' * 80
    ap auth_hash
    # self.current_user = @user
    redirect_to '/user/index'
  end

  def failure
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end

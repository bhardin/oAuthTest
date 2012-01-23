class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) ||
            User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to '/', :notice => "Signed in!"
  end

  def error
    #redirect_to '/', :notice => "Signed in!"
    raise request.env["omniauth.auth"].to_yaml
  end

end

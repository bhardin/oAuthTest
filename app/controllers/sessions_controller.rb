class SessionsController < ApplicationController
  def create
    #raise request.env["omniauth.auth"].to_yaml

    auth = request.env["omniauth.auth"]
    #raise auth["credentials"]["token"].to_yaml
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) ||
            User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to '/', :notice => "Signed in!"
  end

  def destroy
    def destroy
      session[:user_id] = nil
      redirect_to root_url, :notice => "Signed out!"
    end
  end
end

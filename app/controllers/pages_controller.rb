class PagesController < ApplicationController

  def front_page
    if current_user
      @client = Octokit::Client.new(
              :login => current_user.username,
              :oauth_token => current_user.OAuthToken
      )

      @repos = @client.repos
    end
  end

end

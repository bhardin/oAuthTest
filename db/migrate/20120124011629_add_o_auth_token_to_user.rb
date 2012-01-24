class AddOAuthTokenToUser < ActiveRecord::Migration
  def change
    add_column :users, :OAuthToken, :string

  end
end

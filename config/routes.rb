OAuthTest::Application.routes.draw do
  root :to => "pages#front_page"
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout
end

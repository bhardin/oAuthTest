OAuthTest::Application.routes.draw do

  match '/' => 'pages#front_page'
  match "/auth/:provider/callback" => "sessions#create"
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'hmDDz6dvqKCT5VxkkzXNPg', 'TL6bMrGaavW7J3eWA0bsB5YF9uR69g0weCn982VJfmw'
  provider :github, '23bd461d3340800e1807', 'd20d8c037e29ec9a89afdcf9e7b892e3e9bfe0b0', :scope => 'repo'
end
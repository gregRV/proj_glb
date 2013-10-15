Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :github, ENV['GITHUB_CLIENT_ID'], ENV['GITHUB_CLIENT_SECRET']
end

# use OmniAuth::Builder do
#   provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
# end
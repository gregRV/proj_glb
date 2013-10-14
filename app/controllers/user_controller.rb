class UserController < ApplicationController

  def index
  end
  
end

# >> auth_hash[:extra][:raw_info]
# => #<OmniAuth::AuthHash avatar_url="https://0.gravatar.com/avatar/780de66d49071d1f4a3826a8339c78d6?d=https%3A%2F%2Fidenticons.github.com%2F43d54de4194c7aca748b24d26d9118cd.png" 
# created_at="2012-12-25T01:59:20Z" events_url="https://api.github.com/users/gregRV/events{/privacy}" 
# followers=17 followers_url="https://api.github.com/users/gregRV/followers" following=24 
# following_url="https://api.github.com/users/gregRV/following{/other_user}" gists_url="https://api.github.com/users/gregRV/gists{/gist_id}" 
# gravatar_id="780de66d49071d1f4a3826a8339c78d6" html_url="https://github.com/gregRV" id=3118710 login="gregRV" 
# organizations_url="https://api.github.com/users/gregRV/orgs" public_gists=20 public_repos=35 
# received_events_url="https://api.github.com/users/gregRV/received_events" repos_url="https://api.github.com/users/gregRV/repos" 
# site_admin=false starred_url="https://api.github.com/users/gregRV/starred{/owner}{/repo}" 
# subscriptions_url="https://api.github.com/users/gregRV/subscriptions" type="User" updated_at="2013-10-13T08:47:32Z" 
# url="https://api.github.com/users/gregRV">

# GRAB TOKEN HERE
# omniauth.auth"=>#<OmniAuth::AuthHash credentials=#<OmniAuth::AuthHash expires=false token="1fa34324adeb36dce86ca4342a3c66b7e8d9591c">

# CAN MAKE RAKE TASKS TO GATHER NEW INFO/UPDATE
# CAN SCHEDULE HEROKU TO PERFORM RAKE TASKS

# User model
# github UID
# github access_token
# twitter UID
# twitter access_token
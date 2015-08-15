class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def twitter
    user = User.twitter_auth(request.env["omniauth.auth"])
    sign_in_and_redirect user
  end

end

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def box_oauth2
    @user = User.from_omniauth(request.env['omniauth.auth'])
    sign_in_and_redirect @user
  end

  def failure
  end
end

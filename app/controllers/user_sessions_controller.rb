class UserSessionsController < Devise::SessionsController
 layout  "login"

  def new
    session[:user_return_to] ||= '/admin'
    super
  end
end
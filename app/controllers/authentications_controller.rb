class AuthenticationsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    User.update_from_oauth(auth)
  end
end

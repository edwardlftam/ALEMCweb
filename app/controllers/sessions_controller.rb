class SessionsController < ApplicationController
  def new
    @email                 = params[:email]
    @password              = params[:password]
    @remember_token        = nil
    @error                 = nil

    user = User.find_by_email @email
    if user and user.authenticate(@password)
      @remember_token = user.remember_token
      @username       = user.username
    else
      @error = "Invalid username/password combination."
    end
  end
end

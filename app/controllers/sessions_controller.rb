class SessionsController < ApplicationController
  def new
    @username              = params[:username]
    @password              = params[:password]
    @remember_token        = nil
    @error                 = nil

    user = User.find_by_username @username
    if user and user.authenticate(@password)
      @remember_token = user.remember_token
    else
      @error = "Invalid username/password combination."
    end
  end
end

class UsersController < ApplicationController
  def new 
    username              = params[:username]
    email                 = params[:email]
    password              = params[:password]
    password_confirmation = params[:password_confirmation]

    @user = User.new username:username, email:email, password:password, password_confirmation:password_confirmation
    @messages = Array.new 
    if @user.save
      @messages.push "Registered."
      @status = "success"
    else
      @messages = @user.errors.full_messages 
      @status = "error"
    end
  end
end

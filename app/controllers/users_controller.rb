class UsersController < ApplicationController
  def new 
    username              = params[:username]
    email                 = params[:email]
    password              = params[:password]
    password_confirmation = params[:password_confirmation]
    

    @user = User.new username:username, email:email, password:password, password_confirmation:password_confirmation
    if @user.save
      @message = 'Registered'
    else
      @message = 'Error Occurred'
    end
  end
end

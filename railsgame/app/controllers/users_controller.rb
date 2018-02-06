class UsersController < ApplicationController
  def index
  end

  def register
    @user = User.new
    @user.name = params[:user_name]
    @user.email = params[:email]

    if @user.save
      cookies[:user_id] = @user.id
      redirect_to '/games/play' #update the render to be redirect to the play view
    else
      render 'users/register' #update the render text to render the registration page.
    end
  end
end

class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:password_reset][:email].downcase)
    if @user
      @user.create_reset_digest
      @user.send_reset_password_email
      flash[:success] = 'check email for password reset instructions!'
      redirect_to root_url
    else
      flash.now[:danger] = 'email not found!'
      render 'new'
    end
  end

  def edit
  end
end

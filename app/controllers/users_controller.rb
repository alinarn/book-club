class UsersController < ApplicationController
  before_action :logged_in_user, :correct_user, only: [:edit, :update]

  def new
    @user = User.new
  end

  def show
    @user = User.friendly.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      @user.send_activation_email
      flash[:success] = "check your email to activate your account!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      flash[:success] = "profile updated!"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "profile deleted"
    redirect_to root_url
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                  :password_confirmation)
    end

    def logged_in_user
      unless logged_in?
        flash[:danger] = "please log in!"
        redirect_to login_url
      end
    end

    def correct_user
      @user = User.friendly.find(params[:id])
      redirect_to root_url unless current_user?(@user)
    end
end
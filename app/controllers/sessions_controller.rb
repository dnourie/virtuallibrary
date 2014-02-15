class SessionsController < ApplicationController
  skip_before_action :authorize
  
  def new
  end

  def create
    user = User.find_by(email: params[:email])

     if verify_recaptcha(:model => @user, :message => "Please enter the correct captcha!") && user.authenticate(params[:password])
      session[:user_id] = user.id
      verify_recaptcha()
      redirect_to root_url, notice: "Logged in!"
    else
      flash.delete(:recaptcha_error)
      flash.alert = "Email, name, or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, notice: "Logged out!"
  end
end
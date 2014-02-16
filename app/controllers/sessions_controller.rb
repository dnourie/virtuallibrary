class SessionsController < ApplicationController
  skip_before_action :authorize
  
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if verify_recaptcha() && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
      flash.delete(:recaptcha_error)
    else
      flash.delete(:recaptcha_error)
      flash.alert = "Email, name, password, or recaptcha is invalid."
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, notice: "Logged out!"
  end
end
class LoginController < ApplicationController
  before_filter :authorize, :except => :login

  def authorize
    unless session[:user_id]
      flash[:notice] = 'Please log in'
      redirect_to :controller => 'login', :action => 'login'
    end
  end

  def login
    if request.get?
      session[:user_id] = nil
      @user = User.new
    else
      @user= User.new(params[:user])
      logged_in_user = @user.try_to_login
      if logged_in_user
        session[:user_id] = logged_in_user
        jumpto = session[:jumpto] || {:action => 'index'}
        session[:jumpto] = nil
        redirect_to(jumpto)
      else
        flash[:notice] = 'Invalid user/password combination'
      end
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = 'You are now logged out'
    redirect_to :action => 'login'
  end
end
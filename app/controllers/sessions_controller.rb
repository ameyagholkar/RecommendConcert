class SessionsController < ApplicationController
  def login
    @title = "Login"
  end

  def create
    check_user =  User.check_password(params[:session][:username],params[:session][:password])
    if check_user.nil?
      flash.now[:error] = "Invalid email/password combination."
      @title = "Sign in"
      render 'login'
    else
        session[:username] = check_user.username
        session[:id] = check_user.id
        @result = "Success"
        #sign_in user
        redirect_to '/ConcertRecommendation' ## Add route here to the appropriate page which uses session variables.
    end
  end

  def logout
    reset_session
    redirect_to '/ConcertRecommendation'
  end

end

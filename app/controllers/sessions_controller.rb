class SessionsController < ApplicationController
  def show
    if current_user
      redirect_to companies_path
    else
      render layout: false
    end
  end


  def create
    @user = User.first
    
    if @user
      session[:user_id] = @user.id
      redirect_to root_path, flash: { success: "Signed in successfully." }
    else
      redirect_to root_path, flash: { warning: "Sign in unsuccessful. Please try again." }
    end
  end

  def destroy
    reset_session
    redirect_to root_path, flash: { success: "Signed out successfully." }
  end
  
  private
    def auth_hash
      request.env['omniauth.auth']
    end
end

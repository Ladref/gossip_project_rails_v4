class SessionsController < ApplicationController
  before_action :authenticate_user, only: [:index]

  def index
    redirect_to home_index_path
  end

  def new
    user = User.find_by(email: params[:email])
  end

  def create
    puts "*"*50
    user = User.find_by(email: params[:email])
    puts params[:password]
    puts user.authenticate(params[:password])
    puts "*"*50

    # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe
    if user && user.authenticate(params[:password])
      flash[:success] = "You are now logged in!"
      session[:user_id] = user.id
      redirect_to home_index_path
    else
      puts "*"*50
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
  end

  private

def authenticate_user
  unless current_user
    flash[:danger] = "Please log in."
    redirect_to new_session_path
  end
end

end

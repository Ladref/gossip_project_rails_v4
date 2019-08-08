class ApplicationController < ActionController::Base
  include SessionsHelper


  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Everything looks good!!"
      redirect_to @user
    else
      render 'new'
    end
  end


end

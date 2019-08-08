class UserController < ApplicationController

  def index
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end


  def create
    @user = User.create(first_name: params[:first_name],
                        last_name: params[:last_name],
                        email: params[:email],
                        password: params[:password],
                        city_id: rand(1..9))
    if @user.save
      redirect_to home_index_path
    else
      render 'new'
    end
  end

end

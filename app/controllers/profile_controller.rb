class ProfileController < ApplicationController
  def show
    @id = params[:id].to_i
    @first_name = User.find(@id).first_name
    @last_name = User.find(@id).last_name
    @description = User.find(@id).description
    @email = User.find(@id).email
    @age = User.find(@id).age
    @city = User.find(@id).city.name
  end
end

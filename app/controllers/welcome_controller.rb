class WelcomeController < ApplicationController
  
  def index
  end

  def show
    @id = params[:id].to_i
    puts "#{@id}"
    @first_name = User.find(@id).first_name
    puts "#{@first_name}"
  end
end

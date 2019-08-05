class ProfileController < ApplicationController
  def index
    @id = params[:id].to_i
  end
end

class HomeController < ApplicationController

  def index
      @gossips = Gossip.all
  end

  def show
      @gossips = Gossip.all
  end
  
end

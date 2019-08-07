class GossipUrlController < ApplicationController

  def new
  end

  def create
  end

  def show
    @id = params[:id].to_i
    @title = Gossip.all[@id].title
    @single_gossip = Gossip.all[@id].content
    @author = Gossip.all[@id].user.first_name
    @profil_id = Gossip.all[@id].user.id
    @city = Gossip.find(@id).user.city.name
    @created_at = Gossip.find(@id).created_at
  end

end

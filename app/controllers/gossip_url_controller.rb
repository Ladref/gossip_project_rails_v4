class GossipUrlController < ApplicationController
  def page
    @id = params[:id].to_i
    @single_gossip = Gossip.all[@id].content
    @author = Gossip.all[@id].user.first_name
  end
end

class GossipsController < ApplicationController

  def index
    puts "'gossips#index' has been called"
    puts '$'*60
    @gossip_array = Gossip.all
    puts params[:id]
  end

  def show
    puts "'gossips#show' has been called"
    puts '$'*60
    @id = params[:id].to_i
    #@gossip = Gossip.all.find(@id)
    @gossip = Gossip.find(params[:id])
    p @id
    p @gossip
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:title],
                         content: params[:content],
                         user_id: 1)
    if @gossip.save
      redirect_to '/home/n'
    else
      render 'new'
    end
  end


  def edit
    @gossip = Gossip.find(params[:id])
  end


  def update
    @gossip = Gossip.find(params[:id])
    post_params = params.require(:gossip).permit(:title, :content)
    @gossip.update(post_params)
    redirect_to home_path
end

end

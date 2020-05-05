class GossipController < ApplicationController
  def home
    @gossips = Gossip.all
  end

  def welcome
    @user = params[:user]
  end

  def show_gossip
    @gossip = Gossip.find(params[:id])
  end
end

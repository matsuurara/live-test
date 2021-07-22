class LivesController < ApplicationController
  before_action :set_live, only:[:show]

  def index

  end

  def new
    @live = Live.new
  end

  def create
    @live = Live.new(live_params)
    if @live.save
      redirect_to ("/live/#{@item.id}")
    else
      render :new
    end

  end


  def show
  end

  private

  def live_params
    params.require(:live).permit(:title, :info)
  end

  def set_live
    @live = Live.find(params[:id])
  end



end

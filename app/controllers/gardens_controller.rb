class GardensController < ApplicationController
  def index
    @gardens = Garden.all
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.save
    redirect_to garden_path(@garden)
  end

  def show
    @garden = Garden.find(params[:id])
  end

  def edit
    @garden = Garden.find(params[:id])
  end

  def home
  end

  private

  def garden_params
    params.require(:garden).permit(:name)
  end
end

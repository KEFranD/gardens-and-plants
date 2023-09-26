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

    if @garden.nil?
      render_404
    end
  end

  def edit
    @garden = Garden.find(params[:id])
  end

  def update
    @garden = Garden.find(params[:id])
    @garden.update(garden_params)
    redirect_to garden_path(@garden)
  end

  def destroy
    @garden = Garden.find(params[:id])
    @garden.destroy
    redirect_to gardens_path, status: :see_other
  end

  def about
  end

  private

  def garden_params
    params.require(:garden).permit(:name)
  end
end

class BalloonsController < ApplicationController
  respond_to :html

  def index
  end

  def new
    @balloon = Balloon.new
    respond_with @balloon
  end

  def create
    # refactor this action

    @balloon = Balloon.new balloon_params

    if @balloon.save
      respond_with @balloon, location: balloons_path
    else
      render :new
    end
  end

  def edit
    @balloon = Balloon.find params[:id]
    respond_with @balloon
  end

private

  def balloon_params
    params.require(:balloon).permit(:name, :color, :altitude, :location)
  end
end

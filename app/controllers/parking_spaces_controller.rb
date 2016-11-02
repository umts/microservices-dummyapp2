class ParkingSpacesController < ApplicationController
  def available
    render json: ParkingSpace.available
  end
  
  def clear_all
    ParkingSpace.clear_all!
    head :ok
  end

  def take
    parking_space = ParkingSpace.find params.require(:id)
    if parking_space.take!
      head :ok
    else head :unprocessable_entity
    end
  end
end

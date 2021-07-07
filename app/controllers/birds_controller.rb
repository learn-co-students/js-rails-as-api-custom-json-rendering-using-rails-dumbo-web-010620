class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds, except: [:created_at, :updated_at]
  end

  def show 
    bird = Bird.find_by(id: params[:id])

    if bird 
      render json: bird, except: [:created_at, :updated_at]
    else 
      render json: {error: "Bird with ID of #{params[:id]} not found."}
    end 
  end 

end
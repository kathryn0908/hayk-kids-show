class KidsController < ApplicationController
  def index
    @kids = Kid.all

    render json: { kids: @kids }
  end

  def create
    @kid = Kid.create(kid_params)
    if @kid.save
       render json: { kid: @kid }
    else 
      render json: {error: @kid.errors.messages} 
    end
  end

  private

  def kid_params
    params.require(:kid).permit([:username, :age])
    params.permit(:description, :favorite_color)
end

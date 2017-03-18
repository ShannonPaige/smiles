class Api::V1::HumenController < ApplicationController
  respond_to :json

  def index
    respond_with Human.all
  end

  def show
    respond_with Human.find(params[:id])
  end

  def create
    render json: Human.create(human_params)
  end

  private

    def human_params
      params.require(:human).permit(:email, :firstName, :lastName)
    end

end

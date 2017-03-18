class Api::V1::TransfersController < ApplicationController
  respond_to :json

  def create
    human = Human.find(transfer_params["human_id"])
    human.updateSmiles(transfer_params["smiles"])
    render json: Transfer.create(transfer_params)
  end

  private

    def transfer_params
      params.require(:transfer).permit(:human_id, :smiles)
    end

end

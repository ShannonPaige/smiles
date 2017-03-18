require 'rails_helper'

describe "Transferss API" do
  it "#create" do
    human = create(:human)
    transfer_params = { human_id: human.id, smiles: 3 }

    post "/api/v1/transfers", transfer: transfer_params
    transfer = Transfer.last

    assert_response :success
    expect(response).to be_success
    expect(transfer.human_id).to eq(transfer_params[:human_id])
    expect(transfer.smiles).to eq(transfer_params[:smiles])
  end
end

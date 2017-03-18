require 'rails_helper'

describe "Humans API" do
  it "#index" do
    create_list(:human, 3)

    get '/api/v1/humen'

    expect(response).to be_success

    humen = JSON.parse(response.body)

    expect(humen.count).to eq(3)
  end

  it "#show" do
    id = create(:human).id

    get "/api/v1/humen/#{id}"

    human = JSON.parse(response.body)

    expect(response).to be_success
    expect(human["id"]).to eq(id)
  end

  it "#create" do
    human_params = { email: "rgosling@gmail.com", firstName: "Ryan", lastName: "Gosling" }

    post "/api/v1/humen", human: human_params
    human = Human.last

    assert_response :success
    expect(response).to be_success
    expect(human.email).to eq(human_params[:email])
    expect(human.firstName).to eq(human_params[:firstName])
    expect(human.lastName).to eq(human_params[:lastName])
  end
end

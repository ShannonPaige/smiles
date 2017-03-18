class HumanSerializer < ActiveModel::Serializer
  attributes :id, :email, :firstName, :lastName, :smiles, :transfers

  def transfers
    object.transfers
  end
end

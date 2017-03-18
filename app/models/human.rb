class Human < ActiveRecord::Base
  has_many :transfers

  def updateSmiles(newSmiles)
    self.update(smiles: self.smiles + newSmiles.to_i()
  end
end

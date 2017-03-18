FactoryGirl.define do
  factory :transfer do
    human
    smiles 1
  end
  factory :human do
    email "email@email.com"
    firstName "Shannon"
    lastName "Paige"
    smiles 5
  end
end

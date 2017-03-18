class CreateHumen < ActiveRecord::Migration
  def change
    create_table :humen do |t|
      t.string :email
      t.string :firstName
      t.string :lastName
      t.integer :smiles, default: 0

      t.timestamps null: false
    end
  end
end

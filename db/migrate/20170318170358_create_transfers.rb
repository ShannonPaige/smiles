class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.references :human, index: true, foreign_key: true
      t.integer :smiles

      t.timestamps null: false
    end
  end
end

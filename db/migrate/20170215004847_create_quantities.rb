class CreateQuantities < ActiveRecord::Migration[5.0]
  def change
    create_table :quantities do |t|
      t.string :ingredient
      t.float :quantity
      t.references :meal
      t.timestamps
    end
  end
end

class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.belongs_to :meal, index: true
      t.belongs_to :ingredient, index: true
      t.references :user
      t.timestamps
    end
  end
end

class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :process
      t.timestamps
    end
  end
end

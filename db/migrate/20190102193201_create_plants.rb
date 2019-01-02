class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.float :age
      t.date :last_potted_date
      t.date :last_rotated_date
      t.text :notes

      t.timestamps
    end
  end
end

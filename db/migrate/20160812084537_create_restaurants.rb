class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :url
      t.text :description
      t.string :why
      t.integer :numofvisits
      t.string :photo
      t.text :notes
      t.references :city, foreign_key: true
      t.boolean :hide

      t.timestamps
    end
  end
end

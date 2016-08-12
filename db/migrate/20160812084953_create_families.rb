class CreateFamilies < ActiveRecord::Migration[5.0]
  def change
    create_table :families do |t|
      t.string :phone
      t.string :relationship
      t.integer :numofvisits
      t.string :photo
      t.text :notes
      t.references :city, foreign_key: true
      t.boolean :hide

      t.timestamps
    end
  end
end

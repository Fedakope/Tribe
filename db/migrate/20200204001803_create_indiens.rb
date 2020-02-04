class CreateIndiens < ActiveRecord::Migration[5.2]
  def change
    create_table :indiens do |t|
      t.string :name
      t.string :surname
      t.date :birthdate
      t.integer :ancestor
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end

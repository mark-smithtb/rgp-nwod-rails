class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :chronicle
      t.integer :chronicle_id
      t.string :concept
      t.integer :intelligence
      t.integer :wits
      t.integer :resolve
      t.integer :strength
      t.integer :dexterity
      t.integer :stamina
      t.integer :presence
      t.integer :manipulation
      t.integer :composure
      t.integer :health
      t.integer :willpower
      t.string :type

      t.timestamps null: false
    end
    add_index :characters, :type
  end
end

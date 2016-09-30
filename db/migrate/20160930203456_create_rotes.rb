class CreateRotes < ActiveRecord::Migration
  def change
    create_table :rotes do |t|
      t.string :arcanum
      t.integer :level
      t.string :spell
      t.string :creator
      t.string :rote_skill

      t.timestamps null: false
    end
  end
end

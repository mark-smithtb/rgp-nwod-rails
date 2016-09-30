class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.boolean :rote_skill
      t.string :name
      t.integer :level
      t.string :skill_type

      t.timestamps null: false
    end
  end
end

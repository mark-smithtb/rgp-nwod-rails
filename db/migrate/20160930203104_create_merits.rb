class CreateMerits < ActiveRecord::Migration
  def change
    create_table :merits do |t|
      t.string :name
      t.integer :level

      t.timestamps null: false
    end
  end
end

class CreateMages < ActiveRecord::Migration
  def change
    create_table :mages do |t|
      t.string :path
      t.string :order
      t.string :legacy
      t.integer :gnosis
      t.integer :wisdom
      t.integer :mana_max
      t.integer :mana_remaining
      t.integer :arcana_death
      t.integer :arcana_fate
      t.integer :arcana_forces
      t.integer :arcana_life
      t.integer :arcana_matter
      t.integer :arcana_mind
      t.integer :arcana_prime
      t.integer :arcana_space
      t.integer :arcana_spirit
      t.integer :arcana_time

      t.timestamps null: false
    end
  end
end

class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :life_points
      t.integer :attack_points

      t.timestamps
    end
  end
end

class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :score
      t.integer :time_remaining
      t.string :game_type
      
      t.timestamps
    end
  end
end

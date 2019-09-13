class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :score
      t.integer :time_remaining
      t.string :game_type
      t.string :number_sentences
      t.belongs_to :user

      t.timestamps
    end
  end
end

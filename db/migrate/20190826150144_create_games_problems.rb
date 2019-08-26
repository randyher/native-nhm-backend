class CreateGamesProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :games_problems do |t|
      t.belongs_to :game
      t.belongs_to :problem

      t.timestamps
    end
  end
end

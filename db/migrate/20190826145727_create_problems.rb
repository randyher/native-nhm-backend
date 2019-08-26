class CreateProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :problems do |t|
      t.string :number_sentence
      t.string :problem_type
      t.integer :answer
      t.integer :grade

      t.timestamps
    end
  end
end

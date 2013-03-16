class CreatePreworkAnswers < ActiveRecord::Migration
  def change
    create_table :prework_answers do |t|
      t.references :prework_question
      t.references :user
      t.text :answer

      t.timestamps
    end
    add_index :prework_answers, :prework_question_id
    add_index :prework_answers, :user_id
  end
end

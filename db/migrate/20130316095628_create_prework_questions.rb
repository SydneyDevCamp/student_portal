class CreatePreworkQuestions < ActiveRecord::Migration
  def change
    create_table :prework_questions do |t|
      t.integer :order
      t.text :question
      t.references :prework_module

      t.timestamps
    end
    add_index :prework_questions, :prework_module_id
  end
end

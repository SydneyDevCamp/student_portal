class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.text :body
      t.references :user

      t.timestamps
    end
    add_index :resources, :user_id
  end
end

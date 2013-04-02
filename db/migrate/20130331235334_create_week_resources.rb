class CreateWeekResources < ActiveRecord::Migration
  def change
    create_table :week_resources do |t|
      t.references :week
      t.string :title
      t.text :body
      t.references :user

      t.timestamps
    end
    add_index :week_resources, :week_id
    add_index :week_resources, :user_id
  end
end

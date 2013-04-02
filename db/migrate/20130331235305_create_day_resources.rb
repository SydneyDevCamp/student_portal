class CreateDayResources < ActiveRecord::Migration
  def change
    create_table :day_resources do |t|
      t.references :day
      t.string :title
      t.text :content
      t.references :user

      t.timestamps
    end
    add_index :day_resources, :day_id
    add_index :day_resources, :user_id
  end
end

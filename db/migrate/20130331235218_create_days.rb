class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :number
      t.string :title
      t.text :intro
      t.references :week

      t.timestamps
    end
    add_index :days, :week_id
  end
end

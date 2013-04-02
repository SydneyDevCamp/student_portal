class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :day
      t.string :title
      t.text :content

      t.timestamps
    end
    add_index :sections, :day_id
  end
end

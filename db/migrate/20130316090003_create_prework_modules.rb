class CreatePreworkModules < ActiveRecord::Migration
  def change
    create_table :prework_modules do |t|
      t.integer :order
      t.string :name
      t.text :intro
      t.text :resources
      t.string :forum_link

      t.timestamps
    end
  end
end

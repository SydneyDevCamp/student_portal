class CreatePreworks < ActiveRecord::Migration
  def change
    create_table :preworks do |t|
      t.references :user
      t.boolean :complete

      t.timestamps
    end
    add_index :preworks, :user_id
  end
end

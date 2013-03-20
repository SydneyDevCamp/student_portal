class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.references :user
      t.string :email
      t.string :phone
      t.string :facebook
      t.string :twitter
      t.string :github
      t.string :linkedin
      t.text :about
      t.attachment :avatar

      t.timestamps
    end
    add_index :user_profiles, :user_id
  end
end

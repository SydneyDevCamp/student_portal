class CreateCalendarItems < ActiveRecord::Migration
  def change
    create_table :calendar_items do |t|
      t.string :day
      t.date :date
      t.time :time
      t.string :title
      t.string :location
      t.text :details

      t.timestamps
    end
  end
end

class AddWeekToCalendarItem < ActiveRecord::Migration
  def change
    add_column :calendar_items, :week_id, :integer
  end
end

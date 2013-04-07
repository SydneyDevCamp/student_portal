class CalendarItem < ActiveRecord::Base
  attr_accessible :date, :day, :details, :location, :time, :title, :week_id

  belongs_to :week

  default_scope order: 'calendar_items.date ASC, calendar_items.time ASC'
end

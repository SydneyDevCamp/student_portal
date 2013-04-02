class DayResource < ActiveRecord::Base
  belongs_to :day
  belongs_to :user
  attr_accessible :content, :title, :day_id
end

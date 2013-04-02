class WeekResource < ActiveRecord::Base
  belongs_to :week
  belongs_to :user
  attr_accessible :body, :title, :week_id
end

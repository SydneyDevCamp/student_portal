class Week < ActiveRecord::Base
  attr_accessible :intro, :number, :title, :active
  has_many :days
  has_many :week_resources

  default_scope order: 'weeks.number ASC'
end

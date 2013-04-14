class Week < ActiveRecord::Base
  attr_accessible :intro, :number, :title, :active
  has_many :days
  has_many :calendar_items

  default_scope order: 'weeks.number ASC'

  scope :published, where(:active => true)
  scope :unpublished, where(:active => false)
end

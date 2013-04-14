class Day < ActiveRecord::Base
  belongs_to :week
  has_many :sections
  
  attr_accessible :intro, :number, :title, :week_id

  default_scope order: 'days.number ASC'
end

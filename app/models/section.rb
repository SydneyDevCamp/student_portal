class Section < ActiveRecord::Base
  belongs_to :day
  attr_accessible :content, :title, :order, :day_id

  default_scope order: 'sections.order ASC'
end

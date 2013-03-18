class PreworkModule < ActiveRecord::Base
  attr_accessible :forum_link, :intro, :module_type, :name, :order, :resources

  has_many :prework_questions

  default_scope order: 'prework_modules.order ASC'
end

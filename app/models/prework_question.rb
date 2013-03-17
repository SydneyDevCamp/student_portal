class PreworkQuestion < ActiveRecord::Base
  belongs_to :prework_module
  has_many :answers
  attr_accessible :order, :question
end

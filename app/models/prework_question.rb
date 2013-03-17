class PreworkQuestion < ActiveRecord::Base
  belongs_to :prework_module
  has_many :p_answers
  attr_accessible :order, :question
end

class PreworkQuestion < ActiveRecord::Base
  belongs_to :prework_module
  attr_accessible :order, :question
end

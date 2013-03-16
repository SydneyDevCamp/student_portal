class PreworkAnswer < ActiveRecord::Base
  belongs_to :prework_question
  belongs_to :user
  attr_accessible :answer
end

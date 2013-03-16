class Prework < ActiveRecord::Base
  belongs_to :user
  attr_accessible :complete
end

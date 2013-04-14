class Resource < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :topics

  belongs_to :user
  attr_accessible :body, :title, :topic_list
end

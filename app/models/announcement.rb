class Announcement < ActiveRecord::Base
  attr_accessible :body, :publish, :title

  scope :published, where(:publish => true)

  default_scope order: 'announcements.created_at DESC'
end

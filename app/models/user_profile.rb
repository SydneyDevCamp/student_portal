class UserProfile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :about, :avatar, :email, :facebook, :github, :linkedin, :phone, :twitter

  has_attached_file :avatar, 
                    :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
                    :default_url => "/images/:style/missing.png"
                    
end

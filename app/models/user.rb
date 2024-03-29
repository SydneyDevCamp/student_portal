class User < ActiveRecord::Base
  rolify
  ROLES = %w[admin student alumni prospective inactive]
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me

  has_many :topics
  has_many :posts
  has_one :user_profile
  has_many :resources
  
  after_create :add_role_to_user

  private

  def add_role_to_user
    # if self.username == 'Pete'
    #   self.add_role :admin
    # else
      self.add_role :student
    end
  # end
end

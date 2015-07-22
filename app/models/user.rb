class User < ActiveRecord::Base
  has_secure_password

  validates :email, presence: :true
  validates :first_name, presence: :true
  validates :last_name, presence: :true
  validates :email, :uniqueness => true

  has_many :owned_projects, class_name: 'Project' #project creation
  has_many :pledges 
  has_many :rewards
  has_many :backed_projects, through: :pledges, class_name: 'Project' #project backing 
end

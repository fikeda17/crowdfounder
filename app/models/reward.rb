class Reward < ActiveRecord::Base
  has_many :pledges
  belongs_to :projects 
  has_many :users, through :pledges
end

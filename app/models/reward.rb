class Reward < ActiveRecord::Base
  has_many :pledges
  belongs_to :project #ALWAYS BE SINGULAR for belongs to
  has_many :users, through: :pledges
end

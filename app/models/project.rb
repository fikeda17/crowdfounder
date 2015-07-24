class Project < ActiveRecord::Base
  validates :description, :name, :funding_goal, presence: true
  validates :funding_goal, numericality: {only_integer: true}

  def time_left
  	(end_date - Date.today).to_i
  end

  has_many :pledges
  has_many :rewards
  has_many :backers, through: :pledges, class_name: 'User' 
  belongs_to :owner, class_name:'User' 

  accepts_nested_attributes_for :rewards

end

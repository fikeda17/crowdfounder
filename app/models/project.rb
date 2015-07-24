class Project < ActiveRecord::Base
  validates :description, :name, :funding_goal, presence: true
  validates :funding_goal, numericality: {only_integer: true}

  def time_left
  	(end_date - Date.today).to_i
  end

end

class Pledge < ActiveRecord::Base
  belongs_to :reward
  belongs_to :user
  has_one :project, through: :reward
  # if you have a belongs_to relationship its a direct one, cant go through something
end

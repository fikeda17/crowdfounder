class Pledge < ActiveRecord::Base
  belongs_to :reward
  belongs_to :user, through: :rewards
  belongs_to :project, through: :rewards
end

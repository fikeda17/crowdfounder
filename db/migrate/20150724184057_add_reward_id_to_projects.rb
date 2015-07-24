class AddRewardIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :reward_id, :integer
  end
end

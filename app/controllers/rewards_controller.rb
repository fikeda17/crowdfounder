class RewardsController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def create
    @project = Project.find(params[:project_id])
    @reward = @project.rewards.build(reward_params)
    @reward.user = current_user

    if @reward.save
      redirect_to @reward.user, :notice => "Reward made"
    else
      render "projects/show"
    end
  end

  private
  def reward_params
    params.require(:reward).permit(:name, :description, :amount)
  end
end


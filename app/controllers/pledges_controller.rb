class PledgesController < ApplicationController
  def create
    # @project = Project.find(params[:project_id])
    @reward = Reward.find(params[:reward_id])
    # @pledge = @project.pledges.build
    @pledge = @reward.pledges.build
    @pledge.user = current_user

    if @pledge.save
      redirect_to @pledge.user, :notice => 'pledge made'
    else
      render "projects/show"
    end
  end

  # private
  # def pledge_params
  #   params.require(:pledge).permit(:amount)
  # end
end

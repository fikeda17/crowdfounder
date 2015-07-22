class PledgesController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @pledge = @project.pledges.build(pledge_params)
    @pledge.user = current_user

    if @pledge.save
      redirect_to @pledge.user, :notice => 'pledge made'
    else
      render "projects/show"
    end
  end

  private
  def pledge_params
    params.require(:pledge).permit(:amount)
  end
end

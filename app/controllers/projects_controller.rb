class ProjectsController < ApplicationController
  def index
    @projects = Project.order(end_date: :desc)
  end

  def show
    @project = Project.find(params[:id])
    @reward = Reward.where("project_id = :pr", {pr: params[:id]})
    @funding = @project.funding_goal
  end

  def new
    @project = Project.new
    @project.rewards << Reward.new
    @project.rewards << Reward.new
    @project.rewards << Reward.new
    @project.rewards << Reward.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to projects_url
    else
      render :new
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :funding_goal, :start_date, :end_date, :photo, rewards_attributes: [:name, :description, :amount])
  end
end

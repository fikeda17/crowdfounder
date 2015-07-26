class UsersController < ApplicationController

  def index
  end

  def show

    unless current_user && current_user.id == params[:id].to_i
      redirect_to :root, :error => 'Cannot view other pledges'
    end
      @user = current_user

    # @projects = Project.find_by user_id: params[:id]
    # @project = Project.where(["user_id = :u", { u: params[:id] }])
    # @projectid = @project.find(params[:id])
    # user = User.where(email: params[:email]).first
    # @rewards = Reward.where(project) 

    @pledge = Pledge.where(["user_id = :u", { u: params[:id] }])
    # @reward = Reward.where(["id = :i", {i: }])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to projects_url, notice: "Signed Up!"
    else
      render "new"
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end

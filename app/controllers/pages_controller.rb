class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def dashboard
    @projects = current_user.projects
    if params[:query].present?
      @projects = current_user.projects.where("title ILIKE ?", "%#{params[:query]}%")
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to dashboard_path
  end
end

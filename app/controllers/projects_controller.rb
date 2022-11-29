class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    if @project.save
      redirect_to dashboard_path
    else
      render :new_city_project, status: :unprocessable_entity
    end
  end

  private

  def project
    params.require(:project).permit(:title, :description, :location)
  end
end

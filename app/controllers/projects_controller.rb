class ProjectsController < ApplicationController
  def new
    @city = City.find(params[:city_id])
    @project = Project.new
  end

  def create
    @city = City.find(params[:city_id])
    @project = Project.new(project_params)
    @project.city = @city
    @project.user = current_user
    @project.progress = "created"
      if @project.save
        redirect_to root_path
      else
        render :new_city_project_path, status: :unprocessable_entity
      end
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :address, photos: [])
  end
end

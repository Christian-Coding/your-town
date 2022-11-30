class ProjectsController < ApplicationController

  def show
    @project = Project.find(params[:id])
  end

  def index
    @projects = Project.all
    @markers = @projects.geocoded.map do |project|
      {
        lat: project.latitude,
        lng: project.longitude
        #info_window: render_to_string(partial: "info_window", locals: {city: city})
      }
    end
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    @project.progress = "created"
    if @project.save
      redirect_to projects_path
    else
      render :new_project_path, status: :unprocessable_entity
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :address, photos: [])
  end
end

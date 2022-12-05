class ProjectsController < ApplicationController

  def show
    @project = Project.find(params[:id])
  end

  def index

    if params[:query].present?
      @coordinates = Geocoder.search(params[:query]).first.coordinates
    else
      @coordinates = Geocoder.search("munich").first.coordinates
    end

    @projects = Project.all

    @markers = @projects.geocoded.map do |project|
      {
        lat: project.latitude,
        lng: project.longitude,
        info_window: render_to_string(partial: "info_window", locals: { project: project})
      }
    end
  end

  def upvote
    @project = Project.find(params[:id])
    @project.upvote_by current_user
    redirect_back fallback_location: root_path
  end

  def downvote
    @project = Project.find(params[:id])
    @project.downvote_by current_user
    redirect_back fallback_location: root_path
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

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params_update)
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to dashboard_path(@project)
  end

  def tagged
    if params[:tag].present?
      @projects = Project.tagged_with(params[:tag])
    else
      @projects = Project.all
    end
  end


  private

  def project_params
    params.require(:project).permit(:title, :description, :address, tag_list: [], photos: [])
  end

  def project_params_update
    params.require(:project).permit(:title, :description, :address, :progress, tag_list: [], photos: [])
  end


end

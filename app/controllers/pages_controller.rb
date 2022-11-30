class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @projects = City.all
  end

  def dashboard
    @projects = current_user.projects
    if params[:query].present?
      @projects = Project.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @projects = Project.all
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to dashboard_path
  end

  private



end

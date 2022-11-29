class ProjectsController < ApplicationController
  before_action :set_project, only: []

  def show
    @project = Project.find(params[:id])
  end
end

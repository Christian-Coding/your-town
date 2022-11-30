class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @projects = City.all
  end

  def dashboard
    @projects = current_user.projects
  end
end

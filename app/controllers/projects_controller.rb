class ProjectsController < ApplicationController
    before_action :logged_in_user, only: [:new]

    def new
        current_user.profile.experiences.projects.create
        flash[:success] = "Project added."
        redirect_to edit_url
    end

end
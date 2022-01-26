class ProjectsController < ApplicationController
    before_action :logged_in_user, only: [:new]

    def new
        if Profile.find(Experience.find(params[:experience]).profile_id).user_id == session[:user_id]
            Experience.find(params[:experience]).projects.create
            flash[:success] = "Project added."
        else
            flash[:failed] = "Nah Nah, not your space buddy!"
        end
        redirect_to edit_url
    end

end
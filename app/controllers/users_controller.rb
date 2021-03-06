class UsersController < ApplicationController
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "Done, Welcome to the MyResume!"
            session[:user_id] = @user.id
            redirect_to edit_url
        else
            render 'new'
        end
    end
    def show
        @user = User.find(params[:id])
        @profile = @user.profile
      end

    private

        def user_params
            params.require(:user).permit(:name, :email, :password,:password_confirmation)
        end
end

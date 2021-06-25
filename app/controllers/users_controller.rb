class UsersController < ApplicationController
    def index
        redirect_to register_path
    end

    def new
        if logged_in?
            redirect_to root_path
        else
            @user = User.new
        end
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:message] = "User has successfuly created"
            flash[:type] = "success"
            redirect_to login_path
        else
            render :new 
        end
    end

    private
        def user_params
            params.require(:user).permit(:first_name, :last_name, :mobile_number, :email, :password)
        end
end

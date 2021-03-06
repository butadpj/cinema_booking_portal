class SessionsController < ApplicationController
    def new
        if logged_in?
            redirect_to root_path
        else
            return
        end
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            # flash[:notice] = "Logged in successfully."
            redirect_to root_path
        else
            flash[:message] = "There was something wrong with your login details."
            flash[:type] = "danger"
            render :new
        end
    end
 
    def destroy
        session[:user_id] = nil
        # flash[:notice] = "You have been logged out."
        redirect_to root_path
    end
end

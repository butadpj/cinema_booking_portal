class AdminController < ApplicationController

    def index 
        if !admin?
            flash[:message] = "You're not an admin from this page"
            flash[:type] = "danger"
            redirect_to login_path
        else
            @cinemas = Cinema.all
            @movies = Movie.all
           
        end
    end

    def cinema_index
        if !admin?
            redirect_to login_path
        else
            @cinemas = Cinema.all.order("updated_at DESC")
            @movies = Movie.all.order("updated_at DESC")
           
        end
    end

    def show_cinema
        if !admin?
            redirect_to login_path
        else
            @cinema = Cinema.find(params[:id])
        end
    end

    def new_cinema
        if !admin?
            redirect_to login_path
        else
            @cinema = Cinema.new
        end
    end

    def create_cinema
        @cinema = Cinema.new(cinema_params)

        if @cinema.save
            redirect_to cinemas_path
        else
            render :new_cinema
        end
    end

    def edit_cinema
        if !admin?
            redirect_to login_path
        else
            @cinema = Cinema.find(params[:id])
        end
    end

    def update_cinema
        @cinema = Cinema.find(params[:id])

        if @cinema.update(cinema_params)
            redirect_to cinemas_path
        else
            render :edit_cinema
        end
    end

    def destroy_cinema
        @cinema = Cinema.find(params[:id])
        @cinema.destroy

        redirect_to cinemas_path
    end

    # ==============

    def movie_index
        if !admin?
            redirect_to login_path
        else
            @cinemas = Cinema.all.order("updated_at DESC")
            @movies = Movie.all.order("updated_at DESC")
           
        end
    end

    def show_movie
        if !admin?
            redirect_to login_path
        else
            @movie = Movie.find(params[:id])
        end
    end

    def new_movie
        if !admin?
            redirect_to login_path
        else
            @movie = Movie.new
            @cinemas = Cinema.all
        end
    end

    def create_movie
        @movie = Movie.new(movie_params)

        if @movie.save
            redirect_to movies_path
        else
            flash[:message] = "All fields can't be blank"
            flash[:type] = "danger"
            redirect_to new_movie_path
        end
    end

    def edit_movie
        if !admin?
            redirect_to login_path
        else
            @cinemas = Cinema.all
            @movie = Movie.find(params[:id])
        end
    end

    def update_movie
        @movie = Movie.find(params[:id])

        if @movie.update(movie_params)
            redirect_to movies_path
        else
            render :edit_cinema
        end
    end

    def destroy_movie
        @movie = Movie.find(params[:id])
        @movie.destroy

        redirect_to movies_path
    end

    private
        def cinema_params
            params.require(:cinema).permit(:name, :available_seats)
        end

        def movie_params
            params.require(:movie).permit(:title, :description, :cinema_id, :thumbnail)
        end
end

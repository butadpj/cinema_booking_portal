class HomeController < ApplicationController
    helper_method 

    def index
        @cinemas = Cinema.all
        @movies = Movie.all
    end


end
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    # For directors, movies, actors, create an input for them in the form on new page.  However, you will need to specify here in controller what to do.  If the director already exists, assign the appropriate ID; if not, create a new director id #
    redirect_to movies_path(@movie)
  end

  private
    def movie_params
        params.require(:movie).permit(:title, :synopsis, :runtime, :budget, :opening)
    end
end

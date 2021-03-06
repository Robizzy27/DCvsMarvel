class MoviesController < ApplicationController
  def index
    @movies = Movie.includes(:publisher, :director, :actors)
    respond_to do |format|
      format.json{render json: @movies, include: [:publisher, :director, :actors]}
      format.html
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
    @directors = Director.all
    @publishers = Publisher.all

  end

  def create
    @movie = Movie.create(movie_params)
    # For directors, movies, actors, create an input for them in the form on new page.  However, you will need to specify here in controller what to do.  If the director already exists, assign the appropriate ID; if not, create a new director id #
    redirect_to publishers_path(@publisher)
  end

  def edit
    @movie = Movie.find(params[:id])
    @directors = Director.all
    @publishers = Publisher.all
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to publishers_path(@publisher)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to publishers_path
  end

  private
    def movie_params
        params.require(:movie).permit(:title, :synopsis, :runtime, :budget, :opening, :director_id, :publisher_id)
    end
end

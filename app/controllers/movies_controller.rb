class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    respond_to do |format|
      format.html
      format.json{ render json:
      @movies, status: :ok}
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end
end

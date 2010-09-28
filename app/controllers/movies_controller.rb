require 'imdb'

class MoviesController < ApplicationController
  def show
    par = params[:id]
    @movie = Movie.find(par)
    i = Imdb::Movie.new(@movie.title_id)
    @poster = i.poster
    @title = i.title
    @cast = i.cast_members
    dir = @movie.director
    @d_count = Movie.count(:conditions => ['director = ?',dir])
    #d_c = Movie.find_by_sql ["select count(*) from movies where director = ? group by director", dir]
    #p d_c
    #@d_count = d_c[0].to_s
    #p @d_count.to_s+"WOWWWWW"
  end

  def index
    @title = "All Movies"
    @movies = Movie.paginate(:page => params[:page])
  end

  def create
    @screening = Screening.new(:user_id => "2", :title_id => "2")
    @screening.save
    redirect_to screenings_path
  end
  
  def search
    @movies = Movie.search params[:search]
  end
  
  def by_year
    par = params[:id]
    @year = par
    @movies = Movie.find_by_sql ["SELECT * FROM movies WHERE movies.year=?",par]
  end
  
  def by_director
    par = params[:id]
    @director = par
    @movies = Movie.find_by_sql ["SELECT * FROM movies WHERE movies.director=?",par]
  end
end

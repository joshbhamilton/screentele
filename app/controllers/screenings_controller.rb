class ScreeningsController < ApplicationController
  before_filter :authenticate

  def create
    movie1 = Movie.find(params[:id])
    screening1 = Screening.new
    screening1.user_id = current_user.id
    screening1.title_id = movie1.title_id
    if screening1.save then redirect_to screenings_path end
  end
  def index
    @title = "My Screening"
    #@screenings = Screening.find(:all)
    #@screenings = Screening.find(:all, :include => :movies)
    @screenings = Screening.find_by_sql ["SELECT screenings.id, screenings.user_id, screenings.title_id, movies.title_id," + 
                                  " movies.title FROM screenings, movies WHERE screenings.title_id = movies.title_id" +
                                  " AND screenings.user_id=?",current_user]
   # @movies = Movie.find(params[:title_id => title_i])
  end

  def destroy
    Screening.find(params[:id]).destroy
    flash[:success] = "Screening destroyed."
    redirect_to screenings_path
  end
end

class ListingsController < ApplicationController
  def index
    @title = "Full Listings"
    @listings = Listing.paginate(:page => params[:page])
  end
  def match
    @title = "Your Listings"
    @listings = Listing.find_by_sql ["SELECT listings.*, screenings.title_id,movies.title" + 
                                  " FROM screenings,listings,movies WHERE listings.title_id = screenings.title_id" +
                                  " AND listings.title_id = movies.title_id AND screenings.user_id=?",current_user]
  end
end

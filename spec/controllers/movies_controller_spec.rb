require 'spec_helper'

describe MoviesController do

  #Delete these examples and add some real ones
  it "should use MoviesController" do
    controller.should be_an_instance_of(MoviesController)
  end


  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
  end
end

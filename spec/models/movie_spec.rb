require 'spec_helper'

describe Movie do
  before(:each) do
    @attr = { :title_id => 1, :title => "value for title"}
  end

  it "should create a new instance given valid attributes" do
    Movie.create!(@attr)
  end

  it "should require a title id"
end

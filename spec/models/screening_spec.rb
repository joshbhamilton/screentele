require 'spec_helper'

describe Screening do
  before(:each) do
    @valid_attributes = {
      :user_id => 1,
      :title_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Screening.create!(@valid_attributes)
  end
end

require 'spec_helper'

describe Mlists do
  before(:each) do
    @user = Factory(:user)
    @attr = { :title_id => 1 }
  end

  it "should create a new instance given valid attributes" do
    @user.mlists.create!(@attr)
  end

  describe "user associations" do
    before(:each) do
      @mlists = @user.mlists.create(@attr)
    end

    it "should have a user attribute" do
      @mlists.should respond_to(:user)
    end

    it "should have the right associate user" do
      @mlists.user_id.should == @user.id
      @mlists.user.should == @user
    end
  end
end

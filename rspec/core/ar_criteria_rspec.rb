require 'rspec/common/init.rb'

describe "test" do
  include RequireDatabase
  
  before(:all) do
    estabilish_connection
  end
  
  it "shoud be ok" do
    1.should == 1
  end

  it "should be empty" do
    User.count.should == 0
  end  
end

describe "User" do
  before(:all) do
    require "#{File.dirname(__FILE__)}/../envinit"
  end
  
  it "should have user" do
    User.should == User
  end

  it "shoud be user" do
    User.new().should be_a_kind_of(User)
  end  

end

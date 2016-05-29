require 'bike'

  describe Bike do 
    it "should not be broken after we create it" do
    the_bike = Bike.new 
    expect(the_bike.broken?).to eq false
  end

  it "can broken" do
    the_bike = Bike.new 
    the_bike.break!
    expect(the_bike.broken?).to eq true
  end

  it "can be fixed" do
    the_bike = Bike.new
    the_bike.break!
    the_bike.fixed!
    expect(the_bike.broken?).to eq false
  end


end   
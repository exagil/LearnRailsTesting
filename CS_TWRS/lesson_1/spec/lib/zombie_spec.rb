require 'spec_helper'
require 'zombie'

describe Zombie do
  
  it "is named Ash" do
  	zombie = Zombie.new
  	# zombie.name.should == "Ash"
  	expect(zombie.name).to eq("Ash")
  end

  it "has no brains" do
  	zombie = Zombie.new
  	expect(zombie.brains).to be < 1
  end

  it "is not alive" do 
  	zombie = Zombie.new
  	expect(zombie.alive).to be false
  end

  it "should be hungry" do 
  	zombie = Zombie.new
  	expect(zombie).to be_hungry
  end

end
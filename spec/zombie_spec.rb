require './spec_helper'
require './zombie'

RSpec.configure do |config|
  # ...
  config.mock_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end

describe Zombie do
	#your examples go here for testing

  before :each do
    @zombie = Zombie.new
  end
  
	it 'is named Ash' do 
		@zombie.name.should == 'Ash'
	end

  it 'has no brains' do
    @zombie.brains.should < 1
  end
end
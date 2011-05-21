#test/stalky_spec.rb
require 'stalky'

describe Stalky do
	context "search" do
		before(:each) do
		    param = "poop"
			@stalky = mock(Stalky)
			@stalky.stub!(:search).and_return("Hello #{param}")
		end
	    
	    param = "poop"
	    
		it "#search should return Hello #{param}" do
			@stalky.should_receive(:search).and_return("Hello #{param}") 
			answer = @stalky.search(param)
			answer.should match("Hello #{param}")
		end
	end
end

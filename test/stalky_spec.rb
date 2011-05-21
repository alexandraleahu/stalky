#test/stalky_spec.rb
require '../lib/stalky'

describe Stalky do
	context "search" do
		before(:each) do
		    param = "Beautiful"
			@stalky = mock(Stalky)
			@stalky.stub!(:search).and_return("Hello #{param}")
		end
	    
	    param = "Beautiful"
	    
		it "#search should return Hello #{param}" do
			@stalky.should_receive(:search).and_return("Hello #{param}") 
			answer = @stalky.search(param)
			answer.should match("Hello #{param}")
		end
	end
end

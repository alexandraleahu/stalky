#test/rapleaf_spec.rb
require '../lib/Rapleaf/rapleaf.rb'

describe Rapleaf do

	context "search" do
		before(:each) do
		    param = "poop"
			@Rapleaf = mock(Rapleaf)
			@Rapleaf.stub!(:search).and_return("Hello #{param}")
		end
	    
	    param = "poop"
	    
		it "#search should return Hello #{param}" do
			@Rapleaf.should_receive(:search).and_return("Hello #{param}") 
			answer = @Rapleaf.search(param)
			answer.should match("Hello #{param}")
		end
	end
end

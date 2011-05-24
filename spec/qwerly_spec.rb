#test/qwerly_spec.rb
require 'stalky/qwerly.rb'

describe Stalky::Qwerly do
	context "search" do
		before(:each) do
		    param = "poop"
			@Qwerly = mock(Stalky::Qwerly)
			@Qwerly.stub!(:search).and_return("Hello #{param}")
		end
	    
	    param = "poop"
	    
		it "#search should return Hello #{param}" do
			@Qwerly.should_receive(:search).and_return("Hello #{param}") 
			answer = @Qwerly.search(param)
			answer.should match("Hello #{param}")
		end
	end
end

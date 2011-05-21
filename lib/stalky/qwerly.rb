require 'net/http'
require 'json'

#************************#
#***QWERLY API SEARCH****#
#************************#

#Query the qwerly.com API, parse the JSON string, and return the result


class Qwerly
	def self.search(param)
	    
	    #How do I get from config/initializers/stalky.rb ?
	    api_key = "baxhzr57mf6muh3eqgphy4s5"
	    
	    #I want to try each type in succesion, stop when you get a result for
	    # the input.EX: User.stalky.name => "Dan Barrett" from any source
	    search_types = %w[email twitter facebook]
	    
	    search_types.each do |type|
	        begin
			search_url = "http://api.qwerly.com/v1/#{type}/#{param}/?api_key=#{api_key}"
		    resp = Net::HTTP.get_response(URI.parse(search_url))
		    #this is a global for troubleshooting purposes
		    $result = JSON.parse(resp.body)
		    
		    rescue JSON::ParserError
		    	puts "JSON Error: Make sure you have a valid API key"	
		    end
		    
		    if $result.nil?
		    	puts "Search failed. Nothing to return"
		    else
				if $result.has_key? "Error" or "message"
				   $result.each {|key, value| puts "#{key}: #{value}"}
				else
				    #I have "name" hardcoded here. Want to get this a better way
					puts $result["profile"]["name"]
		    	end
		    end
   		end
   end
end

#qwerly search api
require 'net/http'
require 'json'

class Qwerly
	def self.search(input)
	
	    api_key = "baxhzr57mf6muh3eqgphy4s#5"
	    search_types = %w[email]
	    
	    search_types.each do |type|
	        begin
			search_url = "http://api.qwerly.com/v1/#{type}/#{input}/?api_key=#{api_key}"
		    resp = Net::HTTP.get_response(URI.parse(search_url))
		    result = JSON.parse(resp.body)
		    
		    rescue JSON::ParserError
		    	puts "JSON Error: Make sure you have a valid API key"	
		    end
		    
		    if result.nil?
		    	puts "Search failed. Nothing to return"
		    else
				if result.has_key? "Error" or "message"
				   puts result.each {|key, value| puts "#{key}: #{value}"}
				else	
					puts result["profile"]
		    	end
		    end
   		end
   end
end

#lib/stalky.rb
require 'stalky/qwerly'
require 'stalky/rapleaf'

#My goal is to able to call this inline in Rails somehow as follows:
# User.stalky.name --> uses "name" as the output parameter and all other user
#                      info in model as input parameters. For example, query
# 					   User.email, User.twitter, etc until you get a result for
#					   "name" in the JSON hash


class Stalky

   def search(param)
      #somehow search through all available sources 
      #(i.e. stalky/qwerly, stalky/rapleaf)
      #with the search parameter and get results as follows:
      #----> 1. If only one result, choose that one by default
      #----> 2. If >1, allow the user to choose the correct one
      #------->2a. Example: If searching by email give multiple results for
      #------->2b.          "name", add them to array excluding duplicates
   end
end

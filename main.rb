require "pry"
require "sinatra"

# Your routes go here:

get '/' do
	erb :home_page
end
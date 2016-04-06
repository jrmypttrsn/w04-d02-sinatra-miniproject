require "pry"
require "sinatra"

# Your routes go here:

get '/' do
	erb :home_page
end

get '/temp-converter' do
	erb :temp_converter
end

get '/temp-converter-results' do
	erb :temp_converter_results
end
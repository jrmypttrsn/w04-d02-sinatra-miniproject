require "pry"
require "sinatra"

# Your routes go here:

get '/' do
	erb :root_path
end

get '/temp-converter' do
	erb :temp_converter
end

get '/temp-converter-results' do
	@temperature = params['temperature'].to_i
	@units = params['units']
	erb :temp_converter_results
end





############################################
def temperature_conversion(temperature, units)
	if units == "c"
		converted_temperature = (temperature * 9/5) + 32
	else
		converted_temperature = (temperature - 32) * 5/9
	end
	converted_temperature
end

def converted_unit(units)
	if units == "f"
		converted_unit = "c"
	else
		converted_unit = "f"
	end
	converted_unit
end
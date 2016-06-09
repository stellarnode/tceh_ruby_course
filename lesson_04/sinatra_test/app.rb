require 'sinatra'

get '/' do
	erb :layout
end

get '/views/styles.scss' do
	scss :styles
end


# get '/' do
#    name = "Yaroslav"
#    "Hello World!" + " And #{name}, of course."
# end


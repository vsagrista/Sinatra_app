require "sinatra"
require "sinatra/reloader"
require "pry"
require_relative "./lib/count_words.rb"

get "/" do 
	@greetings = "Hi, how are you?"
	erb :index
end

get "/hi" do
	"Hi there!"
end


get "/file" do
	erb :file
end

post "/say_my_name" do	
	"#{params}"
end

post "/words" do
	tempfile = params[:file][:tempfile]
	content = tempfile.read
	word_counter = CountWords.new(content)
	@words = word_counter.count_words
	erb :words
end
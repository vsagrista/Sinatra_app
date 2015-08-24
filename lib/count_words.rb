class CountWords
	def initialize(file)
		@file = file
	end

	def count_words
		 @file.split.length	
	end
end

=begin
count =CountWords.new("hola")
count.count_words
=end


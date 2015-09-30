class Practise
	attr_accessor :sentence

	def word_breaker
		puts sentence.split(" ")
	end

	def word_replacer
		puts sentence.gsub(" ",",")
	end

	def concat_Word(word)
		puts sentence + word
		puts sentence.concat(word)
	end

	def array_Sort
		english = ["d","g","f","a","e","c","b"]
		puts english.sort
	end

	def split_replace
		
	end

	def count_string
		count = sentence.count("m")
		puts "there are #{count} m in the word #{sentence}"
	end

end

test = Practise.new

test.sentence = "Welcome to Ruby programming"

test.word_breaker

test.word_replacer

test.concat_Word(" class")

test.array_Sort

test.count_string
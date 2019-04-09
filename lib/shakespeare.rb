
# this file is not tested, should be run in pure ruby


require "./methods"

dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that",
  "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

shakespeare_corpus = File.read("./shakespeare.txt")


puts "----------jonction words-------------"
puts ""

print word_counter(shakespeare_corpus,dictionnary)

puts ""
puts "----------curse words-------------"
puts ""

curse_array = File.read("./curse.txt").split("\r\n")

print word_counter(shakespeare_corpus,curse_array)

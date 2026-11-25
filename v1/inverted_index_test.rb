require_relative 'inverted_index'

source = {
  "URL1" => "Hello world こんにちは",
  "URL2" => "hello",
  "URL3" => "こんにちは"
}

iv = InvertedIndex.new(source)

puts iv.inverted_source

puts iv.analyze_words("Hello")

puts iv.search('こんにちは').inspect
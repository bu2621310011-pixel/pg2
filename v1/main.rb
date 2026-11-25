require_relative 'search_engine'

se = SearchEngine.new
puts se.search(ARGV[0])
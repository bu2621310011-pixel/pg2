# 検索

require_relative 'inverted_index'

class Searcher
  def initialize(storage)
    @storage = storage
    @inverted_index = InvertedIndex.new(@storage.all_data)
  end

  def search(word)
    @inverted_index.search(word)
  end
end
require_relative 'crawler'
require_relative 'storage'
require_relative 'searcher'

class SearchEngine
  def initialize
    @crawler = Crawler.new
    @storage = Storage.new
  end

  def crawl(url)
    content = @crawler.grab(url)
    @storage.store(url, content)
    content.size
  end

  def search(word)
    searcher = Searcher.new(@storage)
    searcher.search(word)
  end
end
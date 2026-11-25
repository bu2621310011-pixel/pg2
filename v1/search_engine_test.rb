require_relative 'search_engine'

se = SearchEngine.new

se.crawl('https://www.yahoo.co.jp/')
se.crawl('https://cookpad.com/')

puts se.search('yahoo')
puts se.search('cookpad')
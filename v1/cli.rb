require_relative 'search_engine'

se = SearchEngine.new

case ARGV[0]
when 'crawl'
  puts se.crawl(ARGV[1])
else
  puts "usage: command(crawl etc...) [params]"
end
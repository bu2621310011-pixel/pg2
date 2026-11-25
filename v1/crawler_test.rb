require_relative 'crawler'

c = Crawler.new
content = c.grab('https://www.google.co.jp/')

puts content.size

puts content.match?('yahoo')

content = c.grab('https://www.yahoo.co.jp/')

puts content.match?('yahoo')

content = c.grab('https://cookpad.com/')

puts content.match?('cookpad')
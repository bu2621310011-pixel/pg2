require_relative 'storage'

s = Storage.new

s.store('https://www.google.co.jp/', 'google')
s.store('https://www.yahoo.co.jp/', 'yahoo')
s.store('https://cookpad.com/', 'cookpad')

result = s.search('cookpad')
puts result[0]

result = s.search('yahoo')
puts result[0]

s2 = Storage.new
result2 = s2.search('yahoo')
puts result2[0]

puts s2.all_data
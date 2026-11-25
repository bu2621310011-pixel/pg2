require_relative 'searcher'
require_relative 'storage'

storage = Storage.new
storage.store('https://www.google.co.jp/', 'google')
storage.store('https://www.yahoo.co.jp/', 'yahoo')
storage.store('https://cookpad.com/', 'cookpad')

s = Searcher.new(storage)
puts s.search('cookpad')
require_relative 'hash_store'

hs = HashStore.new('database.json')

a = { "url1" => "content1", "url2" => "content2" }

hs.save(a)

b = hs.load

puts b

puts b == a
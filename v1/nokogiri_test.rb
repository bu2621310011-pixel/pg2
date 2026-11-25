require 'nokogiri'

text_with_tag = "<html><body>こんにちは</body></html>"

puts text_with_tag

doc = Nokogiri::HTML.parse(text_with_tag)

puts doc.text
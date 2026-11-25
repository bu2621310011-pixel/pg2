require 'suika'

tagger = Suika::Tagger.new

tagger.parse('すもももももももものうち').each do |token|
  puts token
end
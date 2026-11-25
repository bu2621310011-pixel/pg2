require_relative 'suika_word_analyzer'

swa = SuikaWordAnalyzer.new('すもももももももものうち')
puts swa.analyze.inspect

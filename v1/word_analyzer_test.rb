require_relative 'word_analyzer'

wa = WordAnalyzer.new('Hello, world こんにちは')
puts wa.analyze.inspect
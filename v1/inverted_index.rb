require_relative 'suika_word_analyzer'

class InvertedIndex
  def initialize(source)
    @index = convert_hash(source)
  end

  def inverted_source
    @index
  end

  def convert_hash(hash)
    result = {}

    hash.each do |key, value|
      words = analyze_words(value)

      words.each do |word|
        result[word] ||= []
        result[word] << key
      end
    end

    result
  end

  def analyze_words(text)
    SuikaWordAnalyzer.new(text).analyze
  end

  def search(text)
    words = analyze_words(text)

    words.map do |word|
      @index[word] || []
    end.inject(&:&)
  end
end
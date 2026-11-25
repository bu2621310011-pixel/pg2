require 'suika'
require_relative 'word_analyzer'

class SuikaWordAnalyzer < WordAnalyzer
  def initialize(text)
    super(text)
    @tagger = Suika::Tagger.new
  end

  def analyze
    words = super
    words + suika_parse(analyze_text)
  end

  private

  def suika_parse(text)
    regulated_tokens = @tagger.parse(text).map do |token|
      data = token.split("\t")
      attributes = data[1].split(',')
      [data, attributes]
    end

    noun_tokens = regulated_tokens.select do |regulated_token|
      regulated_token[1][0] == '名詞'
    end

    noun_tokens.map do |noun_token|
      noun_token[0][0]
    end
  end
end
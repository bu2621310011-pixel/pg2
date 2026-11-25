class WordAnalyzer
  def initialize(text)
    @text = text.to_s
  end

  def analyze
    analyze_text.split(/\s+/)
  end

  def analyze_text
    @text.
      downcase.
      unicode_normalize(:nfkc).
      gsub(/[\u0001-\u002f\u003a-\u0040\u005b-\u0060\u007b-\u007f]+/, ' ')
  end
end

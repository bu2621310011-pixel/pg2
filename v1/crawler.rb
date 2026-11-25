# URL情報の取得

require 'open-uri'

class Crawler
  def grab(url)
    URI.open(url).read
  end
end
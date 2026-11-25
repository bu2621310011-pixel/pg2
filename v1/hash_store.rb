require 'json'

class HashStore
  def initialize(path)
    @path = path
  end

  def save(content)
    File.open(@path, 'w') do |f|
      json = JSON.generate(content)
      puts json
      f.write json
    end
  end

  def load
    json = File.read(@path)
    JSON.parse(json)
  end
end
# URL情報を保存

require_relative 'hash_store'

class Storage
  def initialize
    @store = HashStore.new('database.json')
    # 保存データを復元
    @data = @store.load
  end

  # URLと内容を保存
  def store(url, content)
    @data[url] = content
    @store.save(@data)
  end

  # 単語を検索
  def search(word)
    @data.each do |url, content|
      if content.match?(word)
        return [url, content]
      end
    end
    nil
  end

  # 全データを返す
  def all_data
    @data
  end
end
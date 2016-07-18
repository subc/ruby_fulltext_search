# rails runner Tasks::Tutorial001.execute -e development
require "#{Rails.root}/app/models/search_index"

class Tasks::Tutorial001
  def self.main
    logger = Logger.new('log/development.log')
    begin
      execute
    rescue => e
      logger.error e.message
      logger.error e.backtrace.join("\n")
    end
  end

  def self.execute
    p "start"

    # 文字の分割
    str = "Tokyo,Osaka,Nagoya,Fukuoka"
    Search.register(str)

    # create
    SearchIndex.create()

    # select
    p SearchIndex.all[0].page_id

    p "finish"
  end
end


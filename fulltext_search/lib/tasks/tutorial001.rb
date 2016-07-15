# rails runner Tasks::Tutorial001.execute
require "#{Rails.root}/app/models/search_index"

class Tasks::Tutorial001
  def self.execute
    p "start"

    # create
    SearchIndex.create()

    # select
    p SearchIndex.all[0].page_id

    p "finish"
  end
end




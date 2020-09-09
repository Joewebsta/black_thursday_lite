require './lib/merchant_collection'
require './lib/item_collection'

class SalesEngine
  attr_reader :merchants, :item_collection

  def initialize(collections)
    @merchants = collections[:merchants]
    @item_collection = collections[:items]
  end

  def self.from_csv(paths)
    items_collection = ItemCollection.from_csv(paths[:items])
    merchants_collection = MerchantCollection.from_csv(paths[:merchants])

    collections = {
      merchants: merchants_collection,
      items: items_collection
    }

    SalesEngine.new(collections)
  end
end

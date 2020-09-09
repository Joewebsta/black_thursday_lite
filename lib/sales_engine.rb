require './lib/merchant_collection'

class SalesEngine
  attr_reader :merchant_collection, :item_collection

  def initialize(collections)
    @merchant_collection = collections[:merchants]
    @item_collection = ''
  end

  def self.from_csv(paths)
    items_path = paths[:items]
    merchants_collection = MerchantCollection.from_csv(paths[:merchants])

    collections = {
      merchants: merchants_collection
    }

    SalesEngine.new(collections)
  end
end

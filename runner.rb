require './lib/sales_engine'

paths = {
  items: './data/items.csv',
  merchants: './data/merchants.csv'
}

sales_engine = SalesEngine.from_csv(paths)

merchant_collection = sales_engine.merchants
merchant = merchant_collection.find(12_334_165)
item_collection = sales_engine.item_collection
pp items = item_collection.where(merchant.id)

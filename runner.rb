require './lib/sales_engine'

paths = {
  items: './data/items.csv',
  merchants: './data/merchants.csv'
}

sales_engine = SalesEngine.from_csv(paths)

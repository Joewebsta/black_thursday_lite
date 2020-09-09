require './lib/sales_engine'

paths = {
  items: './data/items.csv',
  merchants: './data/merchants.csv'
}

require 'pry'; binding.pry
sales_engine = SalesEngine.from_csv(paths)

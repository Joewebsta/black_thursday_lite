require 'csv'
require './lib/item'

class ItemCollection
  attr_reader :collection

  def initialize(collection)
    @collection = collection
  end

  def self.from_csv(path)
    collection = []
    CSV.foreach(path, headers: true, header_converters: :symbol) do |row|
      collection << Item.new(row)
    end

    ItemCollection.new(collection)
  end

  def all
    collection
  end

  def where(merchant_id)
    collection.find_all { |item| item.merchant_id == merchant_id }
  end
end

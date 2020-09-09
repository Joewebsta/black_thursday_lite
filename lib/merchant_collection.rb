require 'csv'
require './lib/merchant'

class MerchantCollection
  attr_accessor :collection

  def initialize(collection)
    @collection = collection
  end

  def self.from_csv(path)
    collection = []
    CSV.foreach(path, headers: true, header_converters: :symbol) do |row|
      collection << Merchant.new(row)
    end

    MerchantCollection.new(collection)
  end

  def all
    collection
  end

  def find(id)
    collection.find { |merchant| merchant.id == id }
  end
end

class Merchant
  attr_accessor :id, :name

  def initialize(row)
    @id = row[:id].to_i
    @name = row[:name]
  end
end

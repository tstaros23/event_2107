class FoodTruck
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    if @inventory.has_key?(item)
      @inventory[item]
    else
      0
    end
  end

  def stock(item, quantity)
    @inventory[item] += quantity
  end

  def potential_revenue
    total = 0
    @inventory.each do |item|
      item.each do |item_info|
        item_info.price.gsub(/[^\d\.]/, '').to_f * @inventory.count
    require "pry"; binding.pry
      end
    end
    total
    require "pry"; binding.pry
    4
  end
end

require "pry"

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  BRANDS = ["Uggs", "Rainbow"]

  def initialize(brand)
    @brand = brand

  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
  
  def brand=(brand)
    binding.pry 
    @brand = brand
  
    brand.each do |brands|
      if !brands.include?(BRANDS)
        BRANDS << brands
      end
    end
  end
end
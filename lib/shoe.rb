require 'pry'
class Shoe
  attr_accessor :color,  :material, :condition, :size
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    if !(BRANDS.include?(self.brand))
      BRANDS << self.brand 
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  # def size= (new_size)
  #   (BRANDS.uniq).count
  # end 
  # binding.pry

end


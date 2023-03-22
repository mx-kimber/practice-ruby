#tshirts = {color: "blue", size: "small", price: 25}
#p tshirts

#tshirts ={"color" => "blue", "size" => #"small", "price" => 25}
#p "#{tshirts['color']}"

#pants = {color: "black", size: "medium", #price: 60}
#p pants[:size]

#shoes = {color: "brown", size: 8.5, price: 72}
#p shoes

class Shirt

    attr_reader :color, :size, :price
    attr_writer :color, :size, :price

  def initialize(input_options)
    @color = input_options[:color]
    @size = input_options[:size]
    @price = input_options[:price]
  end

  def print_info
    "A #{color} shirt in a size #{size} for $#{price}"
  end

end

shirt1 = Shirt.new(
  {
  color: "blue",
  size: "medium",
  price: 25
  }
)
shirt1.color = ("green")
p shirt1.print_info

shirt2 = Shirt.new(
{ color: "yellow",
  size: "large",
  price: 38}
)

shirt2.size = ("small")
p shirt2.print_info

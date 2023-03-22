#tshirts = {color: "blue", size: "small", price: 25}
#p tshirts

#tshirts ={"color" => "blue", "size" => #"small", "price" => 25}
#p "#{tshirts['color']}"

#pants = {color: "black", size: "medium", #price: 60}
#p pants[:size]

#shoes = {color: "brown", size: 8.5, price: 72}
#p shoes

class Shirt

  def initialize(input_color, input_size, input_price)
    @color = input_color
    @size = input_size
    @price = input_price
  end

  # getter
  def color
    @color
  end

  def size
    @size
  end

  def price
    @price
  end

  # setter/writer
  def color=(new_color)
    @color = new_color
  end

  def size=(new_size)
    @size = new_size
  end

  def price=(new_price)
    @price = new_price
  end

  def print_info
    "A #{color} shirt in a size #{size} for #{price}"
  end

end

shirt1 = Shirt.new("blue", "medium", "25")
p shirt1.color
p shirt1.print_info


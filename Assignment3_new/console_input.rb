require_relative "price_calculator"

class ConsoleInput
  def get_productname
    puts "Please enter all the items purchased separated by a comma"
    products=gets.chomp
    product_name=products.split(",")
    pricecal=PriceCalculator.new(product_name)
    pricecal.calculate_result
    pricecal.disply_result
  end
end

require_relative "product_list"
SEPARATOR=" | "
class PriceCalculator

  attr_accessor :product_name

  def initialize(product_name)
    @product_name=product_name
    @sum=0
    @saved_money=0
  end

  #calculate overall result
  def calculate_result
    product_count=Hash.new(0)
    product_name.each{|name| product_count[name]+=1}

    products=Product.new
    hash_array=products.add_product

    product_count.each do|k,v|
      actual_price=hash_array[k]['price'].to_f*v
      price=calculate_discount(v,hash_array[k]['sale_product'].to_f,hash_array[k]['sale_price'].to_f,hash_array[k]['price'].to_f)
      puts "#{k}\t#{SEPARATOR}#{v}\t#{SEPARATOR}$#{price}"
      @sum+=price
      @saved_money+= actual_price-price
    end
  end


  #calculate discount
  def calculate_discount(no_of_products,no_discount_products,discount_price,price)
    if no_discount_products!=0
      discount=no_discount_products*discount_price/no_discount_products
      no_of_products-=no_discount_products
      return discount+(no_of_products*price)
    else
      return no_of_products*price
    end
  end

  #display product detail
  def disply_result
    puts "******************"
    puts "Total Price $#{@sum}"
    puts "You Saved Money $#{@saved_money.to_f.round(2)}"
  end
end
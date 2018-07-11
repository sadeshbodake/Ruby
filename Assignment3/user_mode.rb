require_relative "product_detail"
require_relative "order_product.rb"
require_relative "file_structure"
class User
  puts "\n*******WELCOME USER******"
  puts " "

  while true
    puts " "
    puts "1.LIST PRODUCTS\n"
    puts "2.SEARCH PRODUCT BY NAME\n"
    puts "3.Buy Product\n"
    puts "4.Exits"
    puts " "
    puts "What You Wanted To Do ? "
    choice_id=gets
    p1=Product.new
     case choice_id
      when "1\n"
        p1.list_product
      when "2\n"
        p1.search_product
      when "3\n"
        p1.buy_product
      when "4\n"
         break
    end
  end
end
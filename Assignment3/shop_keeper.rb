require_relative "product_detail"
require_relative "file_structure"

class ShopKeeper
  puts "\n*******WELCOME ShopKeeper******"
  puts " "
  while true
    puts " "
    puts "1.ADD PRODUCT\n"
    puts "2.REMOVE PRODUCT\n"
    puts "3.LIST ALL PRODUCTS"
    puts "4.SEARCH PRODUCT BY NAME\n"
    puts "5.EDIT PRODUCT DETAILS\n"
    puts "6.Exits"
    puts " "
    puts "What You Wanted To Do ? "

    choice_id=gets

    puts "-----------------------"
    case choice_id
      when "1\n"
          p1=Product.new
          p1.add_product
      when "2\n"
          p1=Product.new
          p1.remove_product
      when "3\n"
         p1=Product.new
         p1.list_product
      when "4\n"
         p1=Product.new
         p1.search_product
      when "5\n"
      #  s1.edit_product
      when "6\n"
         break
    end
  end
end


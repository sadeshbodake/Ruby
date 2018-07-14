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
        puts "Enter Name Of Product"
        product_name=gets.chomp
        puts "Enter Price Of the Product"
        product_price=gets.chomp
        puts "Enter Product Stock-item"
        product_stockno=gets.chomp
        puts "Enter Company Name Of the Product"
        product_company=gets.chomp
        product=Product.new(product_name,product_price,product_stockno,product_company)
        product.add_product
      when "2\n"
        puts "Enter Name Of Product to Remove"
        product_name=gets.chomp
        product=Product.new(product_name)
        product.remove_product
      when "3\n"
        product=Product.new()
        product.list_product
      when "4\n"
        puts "Enter Product Name To SEARCH"
        product_name=gets.chomp
        product=Product.new(product_name)
        product.search_product
      when "5\n"
         #p1=Product.new
         #p1.edit_product
      when "6\n"
         break
    end
  end
end


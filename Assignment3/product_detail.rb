class Product
 # def initialize(name,price,stock,company)
 #   @product_name=name
 #  @product_price=price
 #  @product_st=stock
 # @product_company=company
  #end
  #def initialize(name)
   # @product_name=name
  #end
  def add_product
    puts "Enter Name Of Product"
    product_name=gets.chomp
    puts "Enter Price Of the Product"
    product_price=gets.chomp
    puts "Enter Product Stock-item"
    product_st=gets.chomp
    puts "Enter Company Name Of the Product"
    product_company=gets.chomp
    f1=FileStructure.new
    f1.add_detail(product_name,product_price,product_st,product_company)
  end

  def list_product
    f1=FileStructure.new
    f1.list_detail
  end

  def search_product
    puts "Enter Name Of Product to search"
    product_name=gets.chomp
    f1=FileStructure.new
    f1.search_product(product_name)
  end

  def remove_product
    puts "Enter Product Name to remove :"
    product_id=gets.chomp
    f1=FileStructure.new
    f1.remove_product(product_id)
  end

  def buy_product
    puts "Enter Name Of Product"
    product_name=gets.chomp
    puts "Enter Credit Card Number"
    card_no=gets.chomp
    puts "Enter CVV"
    cvv_no=gets.chomp
    o1=Order.new
    o1.add_userdetail(product_name,card_no,cvv_no)
  end

  def edit_product
    puts "Enter Name of Product to change"
    product_id=gets.chomp
    puts "Enter New Name of product"
    new_name=gets.chomp
    puts "Enter New Price of product"
    new_price=gets.chomp
    puts "Enter New Stock-item of product"
    new_stockno=gets.chomp
    puts "Enter New Company Name"
    new_company=gets.chomp
    o1=FileStructure.new
    o1.edit_product(product_id,new_name,new_price,new_stockno,new_company)
  end
end

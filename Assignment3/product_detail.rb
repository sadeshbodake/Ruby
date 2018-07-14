class Product
  def initialize(name='',price='',stock='',company='')
    @product_name=name
    @product_price=price
    @product_st=stock
    @product_company=company
    $separator='|'
    $id=1
  end

  def add_product
    string=[$id.to_s,@product_name,@product_price,@product_st,@product_company].join("#{$separator}")
    file=FileStructure.new()
    file.append_content(string)
  end

  def list_product
    file=FileStructure.new
    file.list_content
  end

  def is_number?(obj)
        obj.to_s == obj.to_i.to_s
  end

  def search_product
    file=FileStructure.new
    lineno=file.get_line_number(@product_name)
    if(is_number?"#{lineno}")
      puts "search found at line #{lineno}"
    else
      puts "not found"
    end
  end

  def remove_product
    file=FileStructure.new
    file.remove_line(@product_name)
  end

=begin
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
=end
end

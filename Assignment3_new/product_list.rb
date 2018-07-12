class Product
  def initialize(item_name="",unit_price="",discount="")
    @item_name=item_name
    @unit_price=unit_price
    @discount=discount
  end

  def add_product

    h = Hash.new{|hsh,key| hsh[key] = {} }

    h['milk'].store 'price','3.97'
    h['milk'].store 'sale_price','5'
    h['milk'].store 'sale_product','2'

    h['bread'].store 'price','2.17'
    h['bread'].store 'sale_price','6'
    h['bread'].store 'sale_product','3'

    h['banana'].store 'price','0.99'
    h['banana'].store 'sale_price','0'
    h['banana'].store 'sale_product','0'

    h['apple'].store 'price','0.89'
    h['apple'].store 'sale_price','0'
    h['apple'].store 'sale_product','0'

    return h;
  end
end
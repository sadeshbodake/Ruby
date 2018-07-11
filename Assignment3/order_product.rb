class Order
  @@filename="/home/wgbl/Sandesh/Ruby/Assignment3/order_detail.dat"
  def add_userdetail(product_id,product_name,card_no,cvv_no)
    file=File.open(@@filename,"a") do |file|
      line=product_id+"    "+product_name+"    "+card_no+"    "+cvv_no
      file.puts "#{line}"
    end
  end
end
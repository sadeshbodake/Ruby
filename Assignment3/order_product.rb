require_relative "file_structure"

class Order
  @@filename="/home/wgbl/Sandesh/Ruby/Assignment3/order_detail.dat"
  def add_userdetail(product_name,card_no,cvv_no)
    file=File.open(@@filename,"a") do |file|
      line=product_name+"    "+card_no+"    "+cvv_no
      file.puts "#{line}"
      puts " "
    end
     line=product_name+"    "+card_no+"    "+cvv_no
     edit_product(product_name)
  end
  def edit_product(product_name)
    puts "please wait..."
    sleep(2)
    File.open('output.txt', 'w') do |out_file|
      File.foreach('inventory.dat').with_index do |line,line_number|
        a=line.split(" ")
        a[3]=a[3].to_i-1
        a[0].to_s.gsub('\n','')
        a[1].to_s.gsub('\n','')
        a[2].to_s.gsub('\n','')
        a[3].to_s.gsub('\n','')
        a[4].to_s.gsub('\n','')

        l=a[0].to_s+"   "+a[1].to_s+"    "+a[2].to_s+"    "+a[3].to_s+"    "+a[4].to_s
        out_file.puts l if line.include?product_name

        f1=FileStructure.new
        f1.remove_product(product_name)
          f1.add_detail(a[1].to_s,a[2].to_s,a[3].to_s,a[4].to_s)
      end
    end
    puts " "
    puts "Successfully Changes Are Done..."
  end
end
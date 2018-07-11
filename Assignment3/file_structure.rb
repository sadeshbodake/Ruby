require 'fileutils'
class FileStructure

  @@id=1
  @@filename="/home/wgbl/Sandesh/Ruby/Assignment3/inventory.dat"
  @@append="|"
  def add_detail(product_name,product_price,product_st,produc_company)
    file=File.open(@@filename,"a") do |file|
      line=@@id.to_s+"  #{@@append}  "+product_name+"  #{@@append}  "+product_price+"  #{@@append}  "+product_st+"  #{@@append}  "+produc_company

  #     hash={@@id=>{product_name:product_name,product_price:product_price,product_st:product_st,product_company:produc_company}}

      file.puts "#{line}"
      @@id+=1
    end
  end

  def list_detail
    s = File.open(@@filename, 'r') { |f| f.read }
    puts s
  end

  def search_product(product_name)
    File.open(@@filename).each do |line|
     if line.include?product_name
        puts "search found !!!"
        puts line
     end
    end
  end

  def remove_product(product_id)
    File.open('output.txt', 'w') do |out_file|
      File.foreach('inventory.dat').with_index do |line,line_number|
       out_file.puts line if !line.include?product_id
      end
    end
    FileUtils.mv('output.txt', 'inventory.dat')
  end

  def edit_product(product_id,new_name,new_price,new_stockno,new_company)
    puts "Editing..."
    sleep(2)
    File.open('output.txt', 'w') do |out_file|
      File.foreach('inventory.dat').with_index do |line,line_number|
        out_file.puts line if !line.include?product_id
      end
    end
    FileUtils.mv('output.txt', 'inventory.dat')
    add_detail(new_name,new_price,new_stockno,new_company)
    puts " "
    puts "Successfully Changes Are Done..."
  end
end
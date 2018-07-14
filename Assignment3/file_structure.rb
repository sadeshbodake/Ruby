require 'fileutils'
class FileStructure

  def initialize
    @filename="/home/wgbl/Sandesh/Ruby/Assignment3/inventory.txt"
  end

  def append_content(line)
    file=File.open(@filename,'a') do |file|
        file.puts "#{line}"
    end
  end

  def list_content
    line = File.open(@filename,'r') { |f| f.read }
    puts line
  end

  def get_line_number(word)
    count = 0
    file = File.open(@filename, "r") { |file| file.each_line { |line|
      count += 1
      return count if line =~ /#{word}/
    }}
  end

  def remove_line(word)
    File.open('output.txt', 'w') do |out_file|
      File.foreach(@filename).with_index do |line,line_number|
        out_file.puts line_number if !line.include?word
      end
    end
    FileUtils.mv('output.txt', 'inventory.dat')
  end

=begin  def edit_product(product_id,new_name,new_price,new_stockno,new_company)
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
=end
end
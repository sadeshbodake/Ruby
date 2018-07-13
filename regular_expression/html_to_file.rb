class HtmlToFile

  FILE="record.html"

  def parse_file
    data = File.read(FILE)
    output = []
    html_rows = data.scan(%r{<tr.*?>(.*?)</tr>}).flatten

    html_rows.each do |row|
     row.gsub!("&quot;&quot;","")
     cells = row.scan(%r{<td*?>(.*?)</td>}).flatten | row.scan(%r{<th*?>(.*?)</th>}).flatten
     output << cells
    end

    output.each do |row|
       line = row.join(",")
       append_content(line)
    end
  end

  def append_content(line)
    file=File.open("output.txt",'a') do |file|
        file.puts "#{line}"
    end
  end
end

parse=HtmlToFile.new
parse.parse_file
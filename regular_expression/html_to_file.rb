class HtmlToFile

  FILE="record.html"

  def parse_file
    data = File.read(FILE)
    output = []
    html_rows = parse_html(data,"tr")

    html_rows.each do |row|
     row.gsub!("&quot;&quot;","")
     cells = parse_html(row,"td") | parse_html(row,"th")
     output << cells
    end

    output.each do |row|
       line = row.join(",")
       append_content(line)
    end
  end

  def parse_html(data,tag)
    return data.scan(%r{<#{tag}.*?>(.*?)</#{tag}>}).flatten
  end

  def append_content(line)
    file=File.open("output.csv",'a') do |file|
        file.puts "#{line}"
    end
  end
end

parse=HtmlToFile.new
parse.parse_file
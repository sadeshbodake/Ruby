require "csv"

class FileOpration
  def initialize

  end

  #For return file name
  def get_filename()
    puts "Enter CSV FILE Name "
    @filename=gets.chomp
    return File.basename(@filename,'.csv').capitalize
  end

  #For return First Line of File
  def get_header()
    line=File.open(@filename, &:readline).split(',')
    return line.map &:to_sym
  end

  def get_data()
    return CSV.open(@filename, headers: :first_row).map(&:to_h)
  end
end
require_relative "file_opration"

class GenerateClass

  def initialize(args)

  end

  fileobj=FileOpration.new

  CLASSNAME="#{fileobj.get_filename()}"

  ATTRIBUTES=fileobj.get_header()

  klass=Object.const_set CLASSNAME ,Struct.new(*ATTRIBUTES)

  puts "#{klass} class is created."

  hash=fileobj.get_data()

#  klass.class_eval do
#    attr_accessor *hash
 #   define_method(:initialize) do |*values|
  #      hash.each_with_index do ||
   #       instance_variable_set("@"+name, values[i])
    #    end
    #end
  #end
#end

  puts hash.collect { |attr| klass.new("#{attr["Trvaler_Name"]}","#{attr["Destination_Country"]}","#{attr["Case_Status"]}", "#{attr["Departure_Date"]}") }

end

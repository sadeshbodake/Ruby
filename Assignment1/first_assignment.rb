string_1="i am learning Ruby Language"
string_2="Why?Coz It's Cool and I Like It"

puts " "
puts "1. Make string_1 capital case(not uppercase) : "+string_1.capitalize
puts " "
puts "2. Make string_1 lower case : "+string_1.downcase
puts " "
puts "3. Change the string_1's each letter's case to the opposite case : "+string_1.upcase
puts " "
puts "4. Print string_1's characters count : #{string_1.length}"
puts " "
puts "5. Check if string_1 contains the word #{"Ruby"} :"+if string_1.include?('Ruby') then 'word found !'else 'word not found !' end
puts " "
puts "6. Split string_2 by #{'?'}: #{string_2.split('?')}"
puts " "
puts "7.Concat string_1 and string_2: "
string_3=string_1+string_2
puts string_3
puts " "
puts "8.Concatenated string, change from #{"I"} to #{"We"} and make the capital case."
string_4=string_3.gsub("I","We")
puts (string_4).upcase
puts " "
puts "9.Convert string_1 to the symbol : #{string_1.intern}"
puts " "
puts "10 List methods available on strings :"
string_1.methods.each{|m| puts m}
puts " "
puts " "
diff=string_2.length-string_1.length
puts "11.Print strings length difference :#{diff}"
puts " "
x=nil.to_s
puts "12.a) nill conversion to string #{x}"
y=nil.to_a
puts "12.b) nill conversion to array #{y}"
z=nil.to_f
puts "12.c) nill conversion to float #{z}"

puts " "
puts " "
puts "Method Calling"

def check_evenodd(x)
  if(x%2==0)
    print "#{x} is even"
  else
    print "#{x} is odd"
  end
end

puts "#{check_evenodd(5266)}"


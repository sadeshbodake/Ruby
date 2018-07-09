array_1 = [2,6,8,10]
array_2 = [1,5,6,8,11,12]


hash_1 = {a: 'a', b: 'b', c: 'c', d: 'd', e: 'e'}
hash_2 = {x: '10', y: '20', z: '30'}

puts " "
puts "1.Print #{"Hello World"} 10 times"
puts Array.new(10,"Hello world")

puts " "
puts "2.Print number from 30 to 40 "
(30..40).each(){|n| puts(n)}

puts " "
puts "3. Comabine array_1 & array_2 and make elements it uniq"
array_3=array_1+array_2
puts array_3.uniq

puts " "
puts "4. Combine array_1 & array_2 and keep only even elements"
puts array_3.uniq.select(&:even?)

puts " "
puts "5.Combine array_1 & array_2 and delete elements if greater than 8"
array_3.delete_if{|i |i>8}
puts array_3

puts " "
puts "6. array_1 make cubes of all elements and add them "
array_4=array_1.dup
array_4=array_4.map!{|m| m*m*m}
puts array_4
puts " "
sum=0
array_4.each{|i| sum+=i}
puts "Sum of Elements in Array is #{sum}"

puts " "
array_3=array_1+array_2
puts "7.Combine array_1 & array_2 and find index of '8': #{array_3[8]}"

puts " "
array_5=array_1.dup
array_5=array_5.map! { |m| m+5 }
puts "8. array_1: add 5 to each element "
puts array_5

puts " "
puts "9. combine hash_1 & hash_2"
puts hash_1.merge(hash_2)

puts " "
puts "10.replace values of hash_1 with elements from array_1"
hash_3=hash_1.dup

v=0
hash_3.each{|key,value| "#{hash_3[key]=array_2[v].to_i}"}
puts hash_3

puts "11. Make sum of integer values of hash_2"
total=0
hash_2.each{|key,value| "#{total+=hash_2[key].to_i}"}
puts "11.Make sum of integer values of hash_2 :#{total}"

puts " "
puts "12. Make upcase of all values of hash_1"
puts hash_1.each{ |k,v| hash_1[k] = v.upcase!}

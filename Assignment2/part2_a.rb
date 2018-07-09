def method_a
  yield(3,4)
end
method_a { |n1,n2,block| puts "Addition :"+"#{n1 + n2}"}
method_a { |n1,n2,block| puts "Subtraction : "+"#{n1 - n2}"}
method_a { |n1,n2,block| puts "Multiplication : "+"#{n1*n2}" }
method_a { |n1,n2,block| puts "Division: "+"#{n1/n2}" }


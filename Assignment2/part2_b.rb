def compose proc1,proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

squareNumber=Proc.new do |x|
  x*x
end

addNumber=Proc.new do |x|
  x+x
end

addFirst=compose addNumber,squareNumber
mulFirst=compose squareNumber,addNumber

puts addFirst.call(5)
puts mulFirst.call(5)


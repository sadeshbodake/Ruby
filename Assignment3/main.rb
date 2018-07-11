puts "\n****WELCOME****"
puts "\n1.USER"
puts "\n2.ShopKeeper"
puts " "
puts "who you are? "

choice_id=gets

  case choice_id

  when "1\n"
    require_relative "user_mode"
  when  "2\n"
    require_relative "shop_keeper"
  end
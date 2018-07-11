class Display
  def display_questions
    for i in 0..3
        puts "Option "+"#{i+1}".to_s+"] "+"#{@@answers[i]}"
    end
  end
end
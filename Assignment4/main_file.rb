class Quiz
  @@total_question=['I make friends easily.','I have a vivid imagination. ','I worry about things.' , 'experience my emotions intensely. ']
  @@answers=['INACCURATE','NEUTRAL','GOOD','ACCURATE']
  $question_number
  $choice
  @@score=0

  def questions(qno)
    case qno
      when 0
        $question_number=1
        puts "Quesion #{$question_number} : #{@@total_question[qno]}"
        puts " "
        display_questions
        puts " "
        puts "Enter Your Choice ?"
        $choice=gets
        answers

     when 1
        $question_number=2
        puts "Quesion #{$question_number} : #{@@total_question[qno]}"
        puts " "
        display_questions
        puts " "
        puts "Enter Your Choice ?"
        $choice=gets
        answers

     when 2
        $question_number=3
        puts "Quesion #{$question_number} : #{@@total_question[qno]}"
        puts " "
        display_questions
        puts " "
        puts "Enter Your Choice ?"
        $choice=gets
        answers

     when 3
        $question_number=4
        puts "Quesion #{$question_number} : #{@@total_question[qno]}"
        puts " "
        display_questions
        puts " "
        puts "Enter Your Choice ?"
        $choice=gets
        answers
     end

  end
  def answers
    case $question_number
      when 1
        if $choice.eql?"1\n"
          @@score+=4
        end
        if $choice.eql?"2\n"
          @@score+=3
        end
        if $choice.eql?"3\n"
          @@score+=2
        end
        if $choice.eql?"4\n"
          @@score+=1
        end
        if $choice.eql?"exit\n"
          score_detail
          exit
        end


     when 2
       if $choice.eql?"1\n"
         @@score+=3
       end
       if $choice.eql?"2\n"
         @@score+=1
       end
       if $choice.eql?"3\n"
         @@score+=4
       end
       if $choice.eql?"4\n"
         @@score+=1
       end

     when 3
       if $choice.eql?"1\n"
         @@score+=1
       end
       if $choice.eql?"2\n"
         @@score+=2
       end
       if $choice.eql?"3\n"
         @@score+=3
       end
       if $choice.eql?"4\n"
         @@score+=4
       end

     when 4
       if $choice.eql?"1\n"
         @@score+=2
       end
       if $choice.eql?"2\n"
         @@score+=3
       end
       if $choice.eql?"3\n"
         @@score+=2
       end
       if $choice.eql?"4\n"
         @@score+=1
       end
    end
  end
  def display_questions
    for i in 0..3
        puts "Option "+"#{i+1}".to_s+"] "+"#{@@answers[i]}"
    end
  end
  def score_detail
    puts "YOUR SCORE : "+@@score.to_s
  end
end

puts "Try to Answers The Question "
puts " "
obj=Quiz.new
a=[0,1,2,3].shuffle

for i in 0...4
  obj.questions(a[i])
end
obj.score_detail
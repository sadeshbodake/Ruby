class Question
  def questions(qno)
    case qno
      when 0
        puts "Quesion #{$question_number} : #{@@total_question[qno]}"
        puts " "
        $question_number=1
        display_questions
        puts " "
        puts "Enter Your Choice ?"
        $choice=gets
        answers

     when 1
        puts "Quesion #{$question_number} : #{@@total_question[qno]}"
        puts " "
        $question_number=2
        display_questions
        puts " "
        puts "Enter Your Choice ?"
        $choice=gets
        answers

     when 2
        puts "Quesion #{$question_number} : #{@@total_question[qno]}"
        puts " "
        $question_number=3
        display_questions
        puts " "
        puts "Enter Your Choice ?"
        $choice=gets
        answers

     when 3
        puts "Quesion #{$question_number} : #{@@total_question[qno]}"
        puts " "
        $question_number=4
        display_questions
        puts " "
        puts "Enter Your Choice ?"
        $choice=gets
        answers
     end

  end
end
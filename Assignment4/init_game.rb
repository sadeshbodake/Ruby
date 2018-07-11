require_relative "questions_quiz.rb"
class Quiz
  def initialized
    @@total_question=['I make friends easily.','I have a vivid imagination. ','I worry about things.' , 'experience my emotions intensely. ']
    @@answers=['INACCURATE','NEUTRAL','GOOD','ACCURATE']
    $question_number
    $choice
    @@score=0
  end
end

obj=Quiz.new
a=[0,1,2,3].shuffle
obj1=Question.new
for i in 0...4
  obj1.questions(a[i])
end

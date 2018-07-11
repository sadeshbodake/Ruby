class Answers
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
end
#Write a program to enter the 10 marks of a student and to find the smallest, largest and the average of the marks
class Test
  marks=Array.new(10)
  puts "Enter the 10 marks of the student :"
  for i in 0..10
    marks[i]=gets.to_i
  end
    largest=0
    for i in 0..marks.length-1
      if marks[i] > largest
        largest=marks[i]
      end
    end
    puts largest

    smallest=marks[0]
    for i in 0..marks.length-1
      if marks[i] < smallest
        smallest=marks[i]
      end
    end
    puts smallest
    
    avg=0,sum=0
    for i in 0..marks.length-1
      sum=sum+marks[i]
    end
    avg=sum/marks.length-1
    puts avg

end
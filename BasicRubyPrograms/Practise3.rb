#Calculate Prime Numbers between 1 and 100
class Practise3
  
  # Pick a number and divide it be any of the number less than it  by didivind it be num/2
  
  puts "Enter the number for which you want to calculate prime :"
  num=gets.to_i
  for i in 2..num/2
    flag = true
    if(num%i== 0)
      flag=true
    else flag =false  
    end
  end
  if flag == true
   puts "Not a prime"
  else
    puts "prime"
  end
  end
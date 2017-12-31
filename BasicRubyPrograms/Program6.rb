#Ask user to enter the range where you need to find the even and the odd numbers in them
class Program6
  
  puts "Enter the starting number :"
  start=gets.to_i
  puts "Enter the ending number :"
  last=gets.to_i
  for i in start..last
    if(i%2 ==0)
     puts "Number #{i} is Even"
    else
      puts "Number #{i} is Odd"
    end
  end
end
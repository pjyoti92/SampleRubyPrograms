#Write a program to take the three numbers as input from user and print the largest of them
class Pratise1
  
  puts "Enter variable 1:"
  var1=gets.to_i()
  
  puts "Enter variable 2:"
  var2=gets.to_i()
  
  puts "Enter variable 3:"
  var3=gets.to_i()
  
 if(var1>var2)
     if(var1>var3)
       lar=var1
     else
       lar=var3
     end
 else
     if (var2>var3)
       lar=var2
     else
       lar=var3
     end
  end
  puts "Largest value is :#{lar}"
  
end
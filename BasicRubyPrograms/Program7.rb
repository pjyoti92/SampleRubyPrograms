class Program7
  puts "Enter the String "
  str=gets.to_s().downcase
  counter=str.length()-1
  value1=counter/2
  value2=counter
  is_palindrome=false
  index=0
  
  value1.times do 
    if str[index]!=str[-(index+1)]
    is_palindrome=false
    break
  else
    is_palindrome=true
  end

  if is_palindrome==true
    puts "String is palindrome"
  else
    puts "Not a palindrome"
  end
  
end
end

class Practise13
  
  puts "Enter the email address :"
  email=gets.chomp
  puts email
#  if email.match?('\w+@[0-9z-zA-Z]\.[0-9a-zA-Z]')
#    puts "Email entered in valid format"
#  else
#    puts "Email is invalid"  
#  end
  
  if (email =~ /^\w+@[0-9a-zA-Z]+\.[0-9a-zA-Z]+$/)
      puts "Email entered in valid format"
    else
      puts "Email is invalid"  
    end   
  
#  if email.match?('[a-z0-9]+[_a-z0-9\.-]*[a-z0-9]+@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z])')
#        puts 'matches!'
#  else
#        puts 'it doesn\'t match!'
#  end

end
#To check the number of times a character appeared in a word
class Practise9
  puts "Enter the string :"
  str=gets

  input_arr=Array.new()
  input_arr=str.scan /\w/
  #puts input_arr
  output_arr=Array.new()
  index=0
  
  for i in 0..input_arr.length()-1
    counter=0
    for j in 0..input_arr.length()-1
      if input_arr[i]== input_arr[j]
        counter=counter+1
      end
    end
   if(!(output_arr.include?input_arr[i]))
      output_arr[index]=input_arr[i]
      index=index+1
   end
    puts "The character #{input_arr[i]} appeared #{counter}"
  end
  
  for i in 0..output_arr.length()
    puts output_arr[i]
  end
  
  end
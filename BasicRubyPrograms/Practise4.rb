#assk user for 10 numbers and print the average if them
class Practise4
  
  arr=Array.new(5)
  for i in 1..arr.length
  puts "Enter the #{i} number:"
  arr[i]=gets.to_i
  end
  puts arr.length
  sum, avg=0, 0
  for i in (1..5)
    sum=sum+arr[i]
end

puts "Sum =: #{sum}"
puts "Avg =: #{sum/5}"
end
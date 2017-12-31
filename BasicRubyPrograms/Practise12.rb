class Practise12
  
  employee=Hash.new()
  employee={'e001'=>['name1','age1','salary1'] ,'e002'=>['name2','age2','salary2']}
    
    #prints the value
    employee.each do |key,value|
      puts "\n#{key}"
      puts "Employee name \t : #{value[0]}"
  puts "Employee age \t : #{value[1]}"
puts "Employee salary \t  : #{value[2]}"
    end
end
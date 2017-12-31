class Practise11

  #Creating Hashes
  test1={"name"=>"Jyoti","age"=>"25","place"=>"bhopal"}
  test2={:name=>"Jyoti", :age=>"25", :place=>"bhopal"}
  #test3={name:"Jyoti", age:"25", place:"bhopal"}
  test3=Hash.new
  test3["name"]="Saaay"
  test3["Age"]="23"
  test3["salary"]="220"
    
    #Adding the values into hash
    test1["value"=>"Test Value"]
    #Getting the values of the hash array
     puts test3.key("23")  
     puts test3.fetch("name")
     #printing all the values
     test3.each do |key,value|
       puts "#{key} and value is #{value}"
     end

    puts test1.length
    puts test1.size()
    test1.delete("age")
    puts test1.size()
    puts test1
    test1.clear()
    puts test1.empty?
    
end
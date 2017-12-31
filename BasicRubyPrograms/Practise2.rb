#Gender male
#Income -10,000 -30,000 10%
#30,000-60,000 20%
#60,000 15%
#GEnder female
#Income -10,000 -30,000 5%
#30,000-60,000 10%
#60,000 15%
class Practise2
  puts "Enter the Gender M for Male and F for Female:"
  gen=gets.chomp()
  if(gen=='M')
    puts "Enter the Income :"
    sal=gets.to_i
    if(10000<=sal && sal<= 30000)
      tax=sal*10/100
    elsif(30000<sal && sal<=60000)
      tax=sal*20/100
    elsif(sal>60000)
      tax=sal*15/100
    else
      tax=0
    end
    puts "The tax on the salary #{sal} for #{gen} is #{tax} "
  else
    puts "Enter the Income :"
    sal=gets.to_i
    if(10000<=sal && sal<30000)
      tax=sal*5/100
    elsif(30000<=sal && sal<=60000)
      tax=sal*10/100
    elsif(sal>60000)
      tax=sal*15/100
    else
      tax=0
    end
    puts "The tax on the salary #{sal} for #{gen} is #{tax} "
  end
end
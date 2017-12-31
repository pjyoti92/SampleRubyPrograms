#print fibonaccii 1 1 2 3 5 >100
class Pratcise3
 
  a=0
  b=1
  c=a+b
  
  for i in 1..100
    if c>100
      break
    else
      puts c
      a=b
      b=c
      c=a+b
    end
  end
  
end
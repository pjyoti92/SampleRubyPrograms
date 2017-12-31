class Practise10

  arr=[[1,2],[3,4],[5,6]]

  #    arr.each_with_index(row,i)
  #      row.each_with_index(cell, j)
  #      puts arr[i][j]

  for i in 0..arr.length()-1
    for j in 0..arr[i].length()-1
      puts "Before Transpose #{arr[i][j]}"
    end
  end

  row=arr.length()
  col=arr[0].length()
  
  puts row
  puts col

  #Creating the new 2d array
  result=Array.new(col){Array.new(row)}

  #Transpose logic
  for i in 0..col-1
    for j in 0..row-1
      result[i][j]=arr[j][i]
    end
  end
  #Prints the transposed array
  for i in 0..result.length()-1
    for j in 0..result[i].length()-1
      puts "After Transpose #{result[i][j]}"
    end
  end
end


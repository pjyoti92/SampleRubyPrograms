require 'selenium-webdriver'

class TableSort

  driver=Selenium::WebDriver.for(:chrome)
  driver.get("http://www.seleniumeasy.com/test/table-sort-search-demo.html")
  driver.manage().window().maximize()

  TABLE_ROWS={:xpath=>"//table[@id='example']//tbody//tr"}
  FILTER_SIZE={:xpath=>"//select[@name='example_length']"}

  options=driver.find_element(FILTER_SIZE)
  select=Selenium::WebDriver::Support::Select.new(options)
  select.select_by(:value,"25")

  rows=driver.find_elements(TABLE_ROWS)
  if(rows.size == "25".to_i)
    puts "Success"
  end

  options=driver.find_element(FILTER_SIZE)
  select=Selenium::WebDriver::Support::Select.new(options)
  select.select_by(:value,"10")

  array=Array.new(25)
  rows=driver.find_elements(TABLE_ROWS)
  size=rows.size
  rows.each do |i|
    arr=driver.find_elements(:xpath,"//table[@id='example']//tbody//tr//td[4]")
    arr.each do |j|
      puts j.text
      array=j.text.to_i
    end
  end

#  for i in 0..array.size()
#    for j in 0..array.size()
#     array[j] < array[i]
#     temp=array[i]
#     array[i]=array[j]
#     array[j]=temp
#    end
#    end
#array.each do |k|
#  puts "Sorted : #{k.text}"
#end  
end
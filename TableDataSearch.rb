require 'selenium-webdriver'
class TableDataSearch
  
  driver=Selenium::WebDriver.for(:chrome)
  driver.get "http://www.seleniumeasy.com/test/table-search-filter-demo.html"
  driver.manage().window().maximize()
  
  FILTER_1={:xpath=>"//input[@id='task-table-filter']"}
  TABLE_DATA={:xpath=>"//table[@id='task-table']//tbody//tr//td"}
  TABLE_ROW={:xpath=>"//table[@id='task-table']//tbody//tr"}
    
   
    driver.find_element(FILTER_1).send_keys("SE")
    options=driver.find_elements(TABLE_ROW)
    if(options.size>0)
      options.each do |i|
      puts i.text
#      puts options.size
      if (i.text).include?("SE")
        puts "Search Successfull"
      end
      end
    end
    
  USER_COUNT={:xpath=>"//table[@class='table']//tr[@class='filters']//input[@placeholder='#']"}
  USERNAME={:xpath=>"//table[@class='table']//tr[@class='filters']//input[@placeholder='Username']"}
  FIRST_NAME={:xpath=>"//table[@class='table']//tr[@class='filters']//input[@placeholder='First Name']"}
  LAST_NAME={:xpath=>"//table[@class='table']//tr[@class='filters']//input[@placeholder='Last Name']"}
  FILTER={:xpath=>"//button[@class='btn btn-default btn-xs btn-filter']"}
  TABLE={:xpath=>"//table[@class='table']//tbody//tr"} 
     
   user_count=driver.find_element(USER_COUNT)  
   username=driver.find_element(USERNAME)
   firstname=driver.find_element(FIRST_NAME)
   lastname=driver.find_element(LAST_NAME)
   puts user_count.enabled?
   
   driver.find_element(FILTER).click
   
   #First Search
   user_count.send_keys("3")
   options=driver.find_elements(TABLE)
   options.each do |i|
   puts i.text
   end
   
   #Second Search
   firstname.send_keys("aie")
   options=driver.find_elements(TABLE)
   options.each do |i|
     if (i.text).include?("aie")
     puts i.text
     end
   end
      
   
end
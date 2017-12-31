require 'selenium-webdriver'

class TablePagination

  PAGES_A={:xpath=>"(//ul[@id='myPager']//a)[position()>1]"}
  PAGE_N={:xpath=>"(//ul[@id='myPager']//a)[position()=1]"}
  SELECTED_PAGE={:xpath=>"//ul[@id='myPager']//li[@class='active']//a"}
  TABLE_ROWS={:xpath=>"//table[@class='table table-hover']//tbody[@id='myTable']//tr"}

  driver=Selenium::WebDriver.for(:chrome)
  driver.get("http://www.seleniumeasy.com/test/table-pagination-demo.html")

  select_page=driver.find_element(SELECTED_PAGE).text
  puts "#{select_page}"
  sleep 3
  options=driver.find_elements(PAGES_A)
  counter=1
  
  options.each do |i|
    table_count=0
    if(counter>=options.size)
      driver.find_element(PAGE_N)
      puts "#{i.text}"

    else
      counter=counter+1
      puts "#{i.text}"
      i.click
      sleep 3
      count=driver.find_elements(TABLE_ROWS)
      puts "Total rows :#{count.size}"
      
      count.each do |i|
        if(i.displayed?)
          table_count=table_count+1
        end
      end
    end
    puts "#{table_count}"
  end

end
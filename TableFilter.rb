require 'selenium-webdriver'

class TableFilter

  driver=Selenium::WebDriver.for(:chrome)
  driver.get("http://www.seleniumeasy.com/test/table-records-filter-demo.html")
  driver.manage().window().maximize()

  GREEN={:xpath=>"//button[.='Green']"}
  ORANGE={:xpath=>"//button[.='Orange']"}
  RED={:xpath=>"//button[.='Red']"}
  ALL={:xpath=>"//button[.='All']"}
  TABLE_ROW={:xpath=>"//table[@class='table table-filter']//tr"}

  rows=driver.find_elements(TABLE_ROW)
  puts rows.size

  driver.find_element(GREEN).click
  rows1=driver.find_elements(TABLE_ROW)
  rows1.each do |i|
    if i.displayed? && (i.text).include?("Green")
      puts i.text
    end
  end

  driver.find_element(ORANGE).click
  rows2=driver.find_elements(TABLE_ROW)
  rows2.each do |i|
    if i.displayed? && (i.text).include?("Orange")
      puts i.text
    end
  end

  driver.find_element(RED).click
  rows3=driver.find_elements(TABLE_ROW)
  rows3.each do |i|
    if i.displayed? && (i.text).include?("Red")
      puts i.text
    end
  end

end
require 'selenium-webdriver'

class ListBox
  driver=Selenium::WebDriver.for(:chrome)
  driver.get("http://www.seleniumeasy.com/test/bootstrap-dual-list-box-demo.html")
  driver.manage().window().maximize()
  ELEMENT1={:xpath=>"(//ul[@class='list-group'])[1]//li"}
  ELEMENT2={:xpath=>"(//ul[@class='list-group'])[2]//li"}
  LEFT={:xpath=>"//button[@class='btn btn-default btn-sm move-left']"}
  RIGHT={:xpath=>"//button[@class='btn btn-default btn-sm move-right']"}
  LEFT_ALL_SELECT={:xpath=>"(//i[@class='glyphicon glyphicon-unchecked'])[1]"}
  RIGHT_ALL_SELECT={:xpath=>"(//i[@class='glyphicon glyphicon-unchecked'])[2]"}
  options=driver.find_elements(ELEMENT1)
  options.each do |i|
    puts i.text
    puts i.attribute("background")
    if(i.text=="Vestibulum at eros")
      i.click
      driver.find_element(RIGHT).click
      break
    end

  end
  options=driver.find_elements(ELEMENT2)
  options.each do |i|
    if(i.text=="Vestibulum at eros")
      puts "Sucess at location #{i}"
      break
    end
  end
end
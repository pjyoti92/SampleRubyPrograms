require 'selenium-webdriver'

class ListSelect

  driver=Selenium::WebDriver.for(:chrome)
  driver.get("http://www.seleniumeasy.com/test/jquery-dual-list-box-demo.html")
  driver.manage().window().maximize()
  SELECT={:xpath=>"//select[@class='form-control pickListSelect pickData']"}
  BUTTON1={:xpath=>"//button[@class='pAdd btn btn-primary btn-sm']"}
  BUTTON2={:xpath=>"//button[@class='pAddAll btn btn-primary btn-sm']"}
  BUTTON3={:xpath=>"//button[@class='pRemove btn btn-primary btn-sm']"}
  BUTTON4={:xpath=>"//button[@class='pRemoveAll btn btn-primary btn-sm']"}  
    
  option=Selenium::WebDriver::Support::Select.new(driver.find_element(SELECT))
  option.select_by(:text,"Luiza")
  option.select_by(:text,"Alice")
  option.select_by(:text,"Valentina")
  option.select_by(:text,"Maria Eduarda")
  option.select_by(:text,"Lara")
  puts option.multiple?()
  
  driver.find_element(BUTTON1).click
    
  select1=driver.find_element(:xpath=>"//select[@class='form-control pickListSelect pickListResult']")
  option1=Selenium::WebDriver::Support::Select.new(select1)
  puts option1.options()
  
end
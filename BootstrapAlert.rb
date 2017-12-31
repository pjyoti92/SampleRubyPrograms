require 'selenium-webdriver'
class BootstrapAlert
  
  driver=Selenium::WebDriver.for(:chrome)
  driver.get("http://www.seleniumeasy.com/test/bootstrap-alert-messages-demo.html")
  driver.manage().window().maximize()
  
  BUTTON={:id=>"autoclosable-btn-success"}
  BUTTON_TEXT1={:xpath=>"//div[@class='alert alert-success alert-autocloseable-success']"}
  BUTTON_CLOSE={:xpath=>"//div[@class='alert alert-success alert-normal-success']//button[@class='close']"}
    
    driver.find_element(BUTTON).click
    puts driver.find_element(BUTTON_TEXT1).displayed?
    #driver.find_element(BUTTON_CLOSE).click
    
end
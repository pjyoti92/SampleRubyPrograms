require 'selenium-webdriver'

class BootStrapProgressBar

  driver=Selenium::WebDriver.for(:chrome)
  driver.get("http://www.seleniumeasy.com/test/bootstrap-download-progress-demo.html")
  driver.manage().window().maximize()

  BUTTON={:id=>"cricle-btn"}
  PER={:xpath=>"//div[@class='percenttext']"}
  DIX={:id=>"circle"}
    
  driver.find_element(BUTTON).click
  wait=Selenium::WebDriver::Wait.new(:timeout=>40)
    wait.until{
      driver.find_element(PER).text == "100%"
    }
  
end
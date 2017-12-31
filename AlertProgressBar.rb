require 'selenium-webdriver'

class AlertProgressBar

  driver=Selenium::WebDriver.for(:chrome)
  driver.get("http://www.seleniumeasy.com/test/bootstrap-progress-bar-dialog-demo.html")
  driver.manage().window().maximize()

  DAILOG1={:xpath=>"(//button[.='Show dialog'])[1]"}
  DAILOG2={:xpath=>"(//button[.='Show dialog'])[2]"}
  DAILOG3={:xpath=>"(//button[.='Show dialog'])[3]"} 
    
  LOADING={:xpath=>"//div[@class='modal-header']//h3[.='Loading']"}
    
    driver.find_element(DAILOG2).click
    puts driver.find_element(LOADING).displayed?
end
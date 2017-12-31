require 'selenium-webdriver'

class ProgressBar

  driver=Selenium::WebDriver.for(:chrome)
  driver.get("http://www.seleniumeasy.com/test/jquery-download-progress-bar-demo.html")
  driver.manage().window().maximize()

  BUTTON={:xpath=>"//button[@id='downloadButton']"}
  PROGRESS_BAR={:xpath=>"//div[@id='progressbar']"}
  CLOSE={:xpath=>"//button[.='Close']"}
  CANCEL_DOWNLOAD={:xpath=>"//button[.='Cancel Download']"}
  PROGRESS_LABEL={:xpath=>"//div[@class='progress-label']"}
    
  driver.find_element(BUTTON).click
  puts driver.find_element(CANCEL_DOWNLOAD).enabled?
  
  wait=Selenium::WebDriver::Wait.new(:timeout=>20)
  wait.until{
    driver.find_element(PROGRESS_LABEL).text == "Complete!"
  }
  
  driver.find_element(CLOSE).click

end
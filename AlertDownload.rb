require 'selenium-webdriver'

class AlertDownload
  file=File.join(Dir.pwd,'attachment')
  
  pref={
    prompt_for_download: false ,
    default_directory: "#{file}"
  }
  options=Selenium::WebDriver::Chrome::Options.new(pref)
  driver=Selenium::WebDriver.for(:chrome,:options=>options)
  
  driver.get("http://www.seleniumeasy.com/test/generate-file-to-download-demo.html")
  driver.manage().window().maximize()
  
  TEXT_AREA={:xpath=>"//textarea[@id='textbox']"}
  GENERATE={:xpath=>"//button[@id='create']"}
  DOWNLOAD={:xpath=>"//a[@id='link-to-download']"}
    
    driver.find_element(TEXT_AREA).send_keys("Text")
    driver.find_element(GENERATE).click
    driver.find_element(DOWNLOAD).click
    
end


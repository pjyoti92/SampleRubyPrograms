require 'selenium-webdriver'
class ScreenShot
  
  driver=Selenium::WebDriver.for(:chrome)
  driver.get("https://www.google.com")
  time=Time.now.strftime('%d%m%y')
  filepath=File.expand_path(File.dirname(__FILE__)+'/attachment')+'/'+time+'.png'
    driver.save_screenshot filepath
end
require 'selenium-webdriver'

class BootStrapModalAlert
  
  driver=Selenium::WebDriver.for(:chrome)
   driver.get("http://www.seleniumeasy.com/test/bootstrap-modal-demo.html")
   driver.manage().window().maximize()
   
  LAUNCH={:xpath=>"(//div[@class='panel-body']//a[.='Launch modal'])[1]"}
  LAUNCH1={:xpath=>"(//div[@class='panel-body']//a[@data-toggle='modal'])[2]"}
  LAUNCH2={:xpath=>"//div[@class='modal-body']//a"}  
#    driver.find_element(LAUNCH).click
#    puts "clicked"
#  CLOSE={:xpath=>"//div[@class='modal-footer']//a[.='Close']"}
  SAVE={:xpath=>"//div[@class='modal-footer']//a[.='Save changes']"}
  SAVE3={:xpath=>"(//div[@class='modal-footer']//a[.='Save changes'])[3]"}
#    sleep 2
#    driver.find_element(CLOSE).click
    sleep 4
  driver.find_element(LAUNCH1).click
  sleep 9
  driver.find_element(LAUNCH2).click
  sleep 4
  driver.find_element(SAVE3).click
  sleep 6
    
#    begin
#      alert=driver.switch_to.alert()
#      alert.accept
#      puts alert.text
#    rescue
#      puts "no alert"
  
end
require 'selenium-webdriver'

class Alerts
  driver=Selenium::WebDriver.for(:chrome)
  driver.get("http://www.seleniumeasy.com/test/javascript-alert-box-demo.html")
  driver.manage().window().maximize()

  CLICK1={:xpath=>"//button[@class='btn btn-default']"}
  CLICK2={:xpath=>"//button[@class='btn btn-default btn-lg' and .='Click me!']"}
  CLICK3={:xpath=>"//button[@class='btn btn-default btn-lg' and .='Click for Prompt Box']"}

  driver.find_element(CLICK1).click
  alert1=driver.switch_to.alert()
  alert1.accept

  driver.find_element(CLICK2).click
  alert2=driver.switch_to.alert()
  alert2.dismiss

  driver.find_element(CLICK3).click
  alert3=driver.switch_to.alert()
  alert3.send_keys("Test")
  alert3.accept

end


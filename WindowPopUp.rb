require 'selenium-webdriver'

class WindowPopUp
  driver=Selenium::WebDriver.for(:chrome)
  driver.get("http://www.seleniumeasy.com/test/window-popup-modal-demo.html")
  driver.manage().window().maximize()

  BUTTON1={:xpath=>"//a[@title='Follow @seleniumeasy on Twitter']"}
  BUTTON2={:xpath=>"//a[@title='Follow @seleniumeasy on Facebook']"}
  BUTTON3={:xpath=>"//div[@class='two-windows']//a"}
  INPUT={:xpath=>"//input[@id='username_or_email']"}
  FACEBOOK_LOGIN={:xpath=>"//input[@id='email']"}
  FACEBOOK_PASSWORD={:xpath=>"//input[@id='pass']"}
  
  driver.find_element(BUTTON1).click
  handle=driver.window_handles()
  driver.switch_to.window(handle.last)
  sleep 15
  driver.find_element(INPUT).send_keys("Test")
  driver.manage().window().maximize()
  driver.close()
  driver.switch_to.window(handle.first)
  sleep 15
  
  #second window
  driver.find_element(BUTTON2).click
  handle1=driver.window_handles()
  driver.switch_to.window(handle1.last)
  sleep 12
  driver.manage().window().maximize()
  driver.find_element(FACEBOOK_LOGIN).send_keys("pjyoti92@gmail.com")
  driver.find_element(FACEBOOK_PASSWORD).send_keys("shakuntla@123")
  driver.close()
  driver.switch_to.window(handle1.first)
  
  #third
  driver.find_element(BUTTON3).click
  handles=driver.window_handles()
  driver.switch_to.window(handles.last)
  driver.find_element(INPUT).send_keys("Test")
  driver.manage().window().maximize()
  driver.close()
  driver.switch_to.window(handles.first)
  
end
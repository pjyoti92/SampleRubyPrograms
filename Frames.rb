require 'selenium-webdriver'
class Frames
  
  FRAME={:id=>"IF2"}
  TAB1={:xpath=>"//ul[@id='tab_ul']//li[1]"}
  TAB2={:xpath=>"//ul[@id='tab_ul']//li[2]"}
  TAB3={:xpath=>"//ul[@id='tab_ul']//li[3]"}
  
  driver=Selenium::WebDriver.for(:chrome)
  driver.get("http://toolsqa.com/iframe-practice-page/")
  
  driver.switch_to.frame  driver.find_element(FRAME)
  driver.find_element(TAB1).click
  driver.find_element(TAB2).click
  driver.find_element(TAB3).click
  
end
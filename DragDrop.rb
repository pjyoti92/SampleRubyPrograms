require 'selenium-webdriver'

class DragDrop

  driver=Selenium::WebDriver.for(:chrome)
  driver.get("http://www.seleniumeasy.com/test/drag-and-drop-demo.html")
  driver.manage().window().maximize()
  DRAG1={:xpath=>"//div[@id='todrag']//span[1]"}
  DRAG2={:xpath=>"//div[@id='todrag']//span[2]"}
  DRAG3={:xpath=>"//div[@id='todrag']//span[3]"}
  DRAG4={:xpath=>"//div[@id='todrag']//span[4]"}
  DEST={:xpath=>"//div[@id='mydropzone']"}
  DRAGGED_LIST={:xpath=>"//div[@id='droppedlist']"}

  action=Selenium::WebDriver::ActionBuilder.new(:mouse,:keyboard)
  element1=driver.find_element(DRAG1)
  element2=driver.find_element(DEST)
  driver.action.click_and_hold(element1).perform()
  sleep 2
  driver.action.move_to(element2).perform()
  sleep 2
  driver.action.release.perform()
  sleep 2
  #driver.find_element(DRAGGED_LIST).include?(driver.find_element(DRAG1))
  options=driver.find_elements(:xpath=>"//div[@id='droppedlist']/span")
  puts options.size
  sleep 2

  #  driver.get("http://crossbrowsertesting.github.io/drag-and-drop.html")
  #  from=driver.find_element(:id,"draggable")
  #  to=driver.find_element(:id,"droppable")
  #  driver.action.click_and_hold(from).perform()
  #  sleep 2
  #  driver.action.move_to(to).perform()
  #  sleep 2
  #  driver.action.release().perform()
  #  sleep 6
end


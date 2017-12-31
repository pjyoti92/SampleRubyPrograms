require 'selenium-webdriver'

class Hover

  HOME={:xpath=>"(//ul[@id='primary-menu']//li//span)[2]"}
  TUTORIAL={:xpath=>"(//ul[@id='primary-menu']//li//span)[3]"}
  TOOLS={:xpath=>"//ul[@id='primary-menu']//li//span[3]"}
  TRAININGS={:xpath=>"//ul[@id='primary-menu']//li//span[4]"}
  FORUM={:xpath=>"//ul[@id='primary-menu']//li//span[5]"}
  VIDEOS={:xpath=>"//ul[@id='primary-menu']//li//span[6]"}
  BLOGS={:xpath=>"//ul[@id='primary-menu']//li//span[7]"}
  #DEMO SITES={:xpath=>"//ul[@id='primary-menu']//li//span[8]"}
  ABOUT={:xpath=>"//ul[@id='primary-menu']//li//span[9]"}

  driver=Selenium::WebDriver.for(:chrome)
  driver.get("http://toolsqa.com/selenium-webdriver/mouse-hover-action/")
  
  action=Selenium::WebDriver::ActionBuilder.new(:mouse,:keyboard)
  action.move_to(driver.find_element(HOME))
  action.move_to(driver.find_element(TUTORIAL))
#  action.move_to(driver.find_element(TRAININGS))
#  action.move_to(driver.find_element(FORUM))
#  action.move_to(driver.find_element(VIDEOS))
#  action.move_to(driver.find_element(BLOGS))
#  action.move_to(driver.find_element(ABOUT))

end
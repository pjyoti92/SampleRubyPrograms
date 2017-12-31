require 'selenium-webdriver'

class ProgressRange

  driver=Selenium::WebDriver.for(:chrome)
  driver.get("http://www.seleniumeasy.com/test/drag-drop-range-sliders-demo.html")
  driver.manage().window().maximize()
  SLIDER={:xpath=>"//div[@id='slider1']//input"}
  OUTPUT={:xpath=>"//output[@id='range']"}
    for i in 0..10
      driver.find_element(SLIDER).click
    end
   puts driver.find_element(OUTPUT).text
end
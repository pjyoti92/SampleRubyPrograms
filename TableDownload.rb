require 'selenium-webdriver'
require 'clipboard'

class TableDownload
  file=File.join(Dir.pwd,'attachment')
  pref= {
    prompt_for_download: false ,
    default_directory: "#{file}"
  }
  
  options=Selenium::WebDriver::Chrome::Options.new
  options.add_preference(:download,pref)
  driver=Selenium::WebDriver.for(:chrome,:options=>options)
  
  driver.get("http://www.seleniumeasy.com/test/table-data-download-demo.html")
  driver.manage().window().maximize()
  COPY={:xpath=>"//div[@class='dt-buttons']//a[1]"}
  CSV={:xpath=>"//div[@class='dt-buttons']//a[2]"}
  EXCEL={:xpath=>"//div[@class='dt-buttons']//a[3]"}
  PDF={:xpath=>"//div[@class='dt-buttons']//a[4]"}
  PRINT={:xpath=>"//div[@class='dt-buttons']//a[5]"}

  driver.find_element(COPY).click
  str=Clipboard.paste.encode('UTF-8')
  location=File.join(Dir.pwd,'attachment')
  file=File.new("#{location}/text","w+")
  file.puts(str)
  
  driver.find_element(CSV).click
  driver.find_element(EXCEL).click
  driver.find_element(PDF).click
  driver.find_element(PRINT).click
end
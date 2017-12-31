require 'selenium-webdriver'

class BaseMethods
  
  def initialize()
    driver=open_broswer('chrome')
  end
  
  def open_broswer(driver_type)
    case driver_type
    when 'chrome'
      @driver=Selenium::WebDriver.for(:chrome)
      @driver.manage().window().maximize()
    when 'firefox'
      @driver=Selenium::WebDriver.for(:firefox)
      @driver.manage().window().maximize()
    when 'ie'
      @driver=Selenium::WebDriver.for(:ie)
      @driver.manage().window().maximize()
    end
    return @driver
  end

  def launch_url(url)
    @driver.get(url)
  end
  
  def wait_for_element(element_name)
   wait=Selenium::WebDriver::Wait.new(:timeouts,20)#seconds
   wait.until(@driver.find_element(element_name))
  end
  
end



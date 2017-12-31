require 'selenium-webdriver'

class JDatePicker

  @driver=Selenium::WebDriver.for(:chrome)
  @driver.manage().window().maximize()
  @driver.get("http://www.seleniumeasy.com/test/jquery-date-picker-demo.html")

  #Locators
  FROM={:xpath=>"//input[@id='from']"}
  TO={:id=>"to"}
  PRESENT_YEAR={:xpath=>"//div[@class='ui-datepicker-title']//span"}
  PRESENT_MONTH={:xpath=>"//select[@class='ui-datepicker-month']"}
  FORWARD={:xpath=>"//a[@class='ui-datepicker-next ui-corner-all']"}
  BACKWARD={:xpath=>"//a[@class='ui-datepicker-prev ui-corner-all']"}
  DATES={:xpath=>"//td[@data-handler='selectDay']"}

  #Expected date to be selected
  Expected_Date="10/12/2014"
  options=Expected_Date.split("/")
  exp_day=options[0]
  exp_month=options[1]
  exp_year=options[2]
  puts "#{exp_day}\/#{exp_month}\/#{exp_year}"

  #Operations
  #@driver.execute_script("document.getElementById('from').click();")
  sleep 2
#@driver.find_element(FROM).click
  @driver.find_element(FROM).send_keys("12/3/2017")
  sleep 5
  @driver.find_element(TO).send_keys("12/6/2017")
  sleep 5
#  present_year=@driver.find_element(TO).text
#  puts "Present Year #{present_year}"
#  present_year1=present_year.to_i
#  exp_year1=exp_year.to_i
#  difference=present_year1 - exp_year1
#  puts difference
#  if present_year==exp_year
#    puts "Year is already selected"
#  else
#    if difference>0
#      for i in 0..difference
#        @driver.find_element(FORWARD).click
#        if present_year==exp_year
#          puts "Year is selected"
#          break
#          end
#      end
#    else
#      for i in 0..difference
#        @driver.find_element(BACKWARD).click
#        if present_year==exp_year
#          puts "Year is selected"
#          break
#        end
#      end
#
#    end
#  end
end
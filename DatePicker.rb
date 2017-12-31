# These libraries are added to help with doing date comparisons
require 'date'
require 'selenium-webdriver'
require 'cucumber'
require 'require_all'
require 'test/unit/assertions'
require  'logger'
require 'base64'

#require 'BaseMethods'

class DatePicker

  #  def initialize()
  #    @driver=BaseMethods.new()
  #    @driver.get "http://www.seleniumeasy.com/test/bootstrap-date-picker-demo.html"
  #  end
  #
  @driver=Selenium::WebDriver.for :chrome
  @driver.get("http://www.seleniumeasy.com/test/bootstrap-date-picker-demo.html")
  DATE_ELEMENT={:xpath=>"//i[@class='glyphicon glyphicon-th']"}
  PREVIOUS={:xpath=>"//div[@class='datepicker-days']//table[@class='table-condensed']//th[@class='prev']"}

  # The date you want to set
  date = '12-April 2017'
  options=date.split("-")
#  exp_year=options[2]
  exp_month=options[1]
  exp_day=options[0]

  #Exp year
#  options1=exp_month.split(" ")
#  exp_month1=options1[0]
#  exp_year1=options1[1]
#  puts exp_month1
#  puts exp_year1
#  
  @driver.find_element(DATE_ELEMENT).click
  current_month=@driver.find_element(:xpath=>"//div[@class='datepicker-days']//table[@class='table-condensed']//th[@class='datepicker-switch']").text
#  
#  options3=current_month.split(" ")
#  current_month1=options3[0]
#  current_year1=options3[1]
#  puts current_month1
#  puts current_year1
  
  #Logic for year
#  if current_year1 == exp_year1
#  puts "Expected year is selected already"
#  else
#    @driver.find_element(:xpath=>"//div[@class='datepicker-days']//table[@class='table-condensed']//th[@class='datepicker-switch']").click
#     for i in 0..20
#       sleep 2
#       @driver.find_element(PREVIOUS).click
#       current_year1=@driver.find_element(:xpath=>"//div[@class='datepicker-days']//table[@class='table-condensed']//th[@class='datepicker-switch']").text
#       if current_year1 == exp_year1
#        puts "Expected year is selected"
#        break
#     end
#     end
#  end
  
  #Logic for the month
  if current_month == exp_month
    puts "correct month selected"
  else
    for i in 0..12
      @driver.find_element(PREVIOUS).click
      sleep 2
      current_month=@driver.find_element(:xpath=>"//div[@class='datepicker-days']//table[@class='table-condensed']//th[@class='datepicker-switch']").text
      if current_month == exp_month
          puts "correct month selected"
           break
    end
  end  
  end
  options=@driver.find_elements(:xpath=>"//table[@class='table-condensed']//td[@class='day' or @class='disabled disabled-date day']")
  options.each do |i|
    if i.text == "#{exp_day}"
      i.click
      sleep 2
      puts "correct date selected"
      break
    else
      puts "Date not available"  
    end
  end
  end

  
  
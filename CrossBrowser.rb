require 'selenium-webdriver'

class FormField

  #Chrome Download Options
  file=File.join(Dir.pwd,'attachment')
  prefs = {
      prompt_for_download: false,
      default_directory: "#{file}"
    }
    options=Selenium::WebDriver::Chrome::Options.new
    options.add_preference(:download,prefs)
      @driver=Selenium::WebDriver.for :chrome, :options => options

  #Firefox Download Options
#  profile=Selenium::WebDriver::Firefox::Profile.new
#  profile['browser.download.dir']="#{file}"
#  profile['browser.download.folderList']=2
#  profile['prompt_for_download']=false
#  profile['broswer.helperApps.neverAsk.saveToDisk']="application/zip,application/vnd.ms-excel"
#  profile['pdfjs.disabled']=true
#  options=Selenium::WebDriver::Firefox::Options.new(:profile=>profile)
#  @driver=Selenium::WebDriver.for :firefox , options: options
  @driver.get('http://toolsqa.com/Automation-practice-form/')
  @driver.manage().window().maximize()
  def wait_for_element(webelement)
    wait=Selenium::WebDriver::Wait.new(:timeouts,20)
    wait.until(webelement)
  end
  #Clicking an element
  #Different loactors
  #    :class,
  #    :class_name,
  #    :css,
  #    :id,
  #    :link,
  #    :link_text,
  #    :name,ss
  #    :partial_link_text,
  #    :tag_name,
  #    :xpath
  wait=Selenium::WebDriver::Wait.new()
  wait.until{@driver.find_element(:class,"form-horizontal")}
  form=@driver.find_element(:tag_name,"form")
  puts "1"
  #Method of scrolling into the view
  form.location_once_scrolled_into_view
  element1=@driver.find_element(:partial_link_text,'Partial Link Test')
  puts "1"
  element1.location_once_scrolled_into_view
  element1.click
  wait=Selenium::WebDriver::Wait.new(:timeout=>30)
  @driver.find_element(:link_text,"Link Test").click
  puts "clicked"
  sleep 4
  # @driver.execute_script("javascript: setTimeout(\"history.go(-1)\", 2000)");
  #@driver.execute_script("window.history.go(-1);")
  sleep 4
  @driver.navigate.back
  sleep 4
  @driver.find_element(:name,"firstname").send_keys "Jyoti"
  @driver.find_element(:name,"lastname").send_keys "Pareek"
  @driver.find_element(:xpath,"//*[@id='sex-1']").click
  @driver.find_element(:id,'exp-4').click
  @driver.find_element(:id,'datepicker').send_keys "Test"
  @driver.find_element(:id,'profession-1').click
  #  file=File.join(Dir.pwd,'attachment','Test')
  #  puts file
  sleep 2
  @driver.find_element(:id,"photo").send_keys "J:\\workspace1\\Pratcise-Ruby\\attachment\\Test.png"
  sleep 3
  @driver.find_element(:partial_link_text,"Selenium Automation").click
  @driver.find_element(:link_text,"Test File to Download").click
  @driver.find_element(:id,"tool-1").click
  #Select command
  dropdown_continents=@driver.find_element(:id=>"continents")
  select=Selenium::WebDriver::Support::Select.new(dropdown_continents)
  select.select_by(:text,"Europe")
  select.select_by(:text,"Australia")
  select.select_by(:index,"1")
  #Second select command
  dropdown_commands=@driver.find_element(:id=>"selenium_commands")
  select1=Selenium::WebDriver::Support::Select.new(dropdown_commands)
  select1.select_by(:text,"Switch Commands")
  
  @driver.find_element(:id=>"submit").click
  @driver.close

end

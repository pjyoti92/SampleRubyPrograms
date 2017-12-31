require 'selenium-webdriver'
require 'rodf'

class ReadingExcel
  
  RODF::SpreadSheet.file("J:\workspace1\Pratcise-Ruby\attachment\TestSeet.ods")
  spreadsheet.table 'Initial table'
  
end
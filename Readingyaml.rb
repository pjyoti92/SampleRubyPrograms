require 'yaml'
require 'selenium-webdriver'

class Readingyaml

  if File.exists?("J:/workspace1/Pratcise-Ruby/attachment/Test.yaml")
    @test_file=YAML.load_file("J:/workspace1/Pratcise-Ruby/attachment/Test.yaml")
  end

  puts @test_file["Test_Url"]
  puts @test_file["Test_Data1"]
  puts @test_file["Test_Data2"]

  @test_file["Test_Data3"]="Test data Jyoti1"
  File.open('J:/workspace1/Pratcise-Ruby/attachment/Test.yaml','w') do |f|
  f.write @test_file.to_yaml
  end
  puts @test_file["Test_Data3"]

end
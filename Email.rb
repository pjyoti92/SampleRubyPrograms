require 'mail'
require 'selenium-webdriver'

class Email

  file=File.join(Dir.pwd,"attachment/Email")
#  
#  mail=Mail.new do
#    from 'jyoti_pareek@neovasolutions.com'
#    to 'pjyoti92@gmail.com'
#    subject 'Test email'
#    body File.read(file)
#    add_file '/full/path/to/somefile.png'
#  end
#  
#  mail.delivery_method :smtp, :address=>"localhost", :port=>25
#  mail.deliver
#  mail.delivery_method :sendmail
#  mail.deliver
  
  #Reading an email
  
  Mail.defaults do 
    retriever_method :pop3, :address=>"pop.gmail.com",
    :port=>995 ,
    :user_name=>'jyoti_pareek@neovasolutions.com',
    :password=>'may@2017',
    :enable_ssl=> true
  end
 
  #First Last email
# puts Mail.first
  #Mail.last
  #Mail.all
  puts "0"
  #Find specific email
#  email=Mail.find(:from=> 'pjyoti92@gmail.com' , :count=> 2 )
#  puts email
#  puts email.length
#   puts "1"
#  email=Mail.all
#  puts email.length
  
  #Reading an email
#  str=Mail.first
#  email=Mail.read(str)
#  puts email.envelope_from
#  puts email.from.address
#  puts email.sender.address
#  puts email.to
#  puts email.cc
#  puts email.subject
#  puts email.date.to_s
#  puts email.message_id
#  puts email.decode
  

end
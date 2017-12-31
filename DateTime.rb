class DateTime
  
  date=Time.new.strftime("%D %H:%M")
  puts date
  date1 = Time.now.utc.getlocal("-05:00");
  value=date1.strftime('%m/%d/%Y %H:%M');
  puts value
end
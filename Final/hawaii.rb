require 'csv'


#the hawaii names csv must only have the first name of the contributor and their hawaii id. so delete other columns
our_data = CSV.read('butts.csv') 
our_data.each {|each| each.push('')} 
Dir.glob('butts2.csv').each do |each| 
  next if each == 'butts.csv' #if the lines are identical the lines SHOULD skip. welp
  file = CSV.read(each) 
  file.each do |line| 
    temp = our_data.assoc(line[0]) # http://ruby-doc.org/core-2.2.0/Array.html#method-i-assoc
    temp[-1] = line[1] if temp #if last element of array of names equals the first of line in our data then they merge
  end
end

#Hawaii requires tilde...
csv = CSV.open('payments.csv','wb' , :col_sep => "~") 
our_data.each {|each| csv << each} 



 

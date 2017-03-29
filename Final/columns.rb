#insert new columns
#needs tilde


require 'csv'

    rows = CSV.read('payments.csv', headers: true).collect do |row|
    hash = row.to_hash
    hash.merge('SCHEDULE' => 'A', 'REG' => 'NC20302')
    end

    column_names = rows.first.keys
    txt = CSV.generate do |csv|
    csv << column_names
    rows.each do |row|
    csv << row.values
    end
    end

    File.open('payments2.csv', 'w') { |file| file.write(txt) }






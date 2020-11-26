# frozen_string_literal: true

require 'sqlite3'

db = SQLite3::Database.new('testSQLite')

# db.execute "INSERT INTO Cars (Name, Price) VALUES ('Zaz', 300)"
db.execute 'SELECT * FROM Cars' do |car|
  puts "#{car}\n" + '========='
end

db.close

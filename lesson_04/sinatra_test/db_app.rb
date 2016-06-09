require "sqlite3"

db = SQLite3::Database.new "./db/test.db"

db.execute "INSERT INTO Cars ('brand', 'model', 'price') VALUES ('Ford', 'Mondeo', 7899)"

db.execute "SELECT * FROM Cars" do |car|
    puts car.to_s
end

db.close


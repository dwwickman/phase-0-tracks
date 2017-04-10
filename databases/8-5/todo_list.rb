require 'sqlite3'

db = SQLite3::Database.new("todo_list.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS todo_list(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    choir VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)
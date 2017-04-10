require 'sqlite3'

db = SQLite3::Database.new("todo_list.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS todo_list(
id INTEGER PRIMARY KEY,
name VARCHAR(255),
task VARCHAR(255)
)
SQL

db.execute(create_table_cmd)

def create_todo_list(db, name, task)
	db.execute("INSERT INTO todo_list (name, task) VALUES (?, ?)", [name, task])
end

def see_task(db)
	db.execute("SELECT * FROM todo_list")
end

def delete_task(db, task)
	db.execute("DELETE FROM todo_list WHERE task=?", [task])
end

def change_task_assignment(db, name, task)
	db.execute("UPDATE todo_list SET name=? WHERE task=?", [name, task])
end

# create_todo_list(db, "Sanders", "Garbage")
# create_todo_list(db, "Jimmy", "School")
# delete_task(db, "School")
# change_task_assignment(db, "Billy", "Garbage")
input = 0
until input == 5
	
	puts "Would you like to see all tasks(1), add a task(2), delete a task(3), change whos doing task(4), or exit(5)?"
	input = gets.chomp.to_i

	if input == 1
		list = see_task(db)
		list.each do |task|
  puts "#{task['name']} has the task of #{task['task']}"
 end
	elsif input == 2
		puts "Enter name and task (name-task)"
		name_and_task = gets.chomp.split('-')
		name = name_and_task[0]
		task = name_and_task[1]
		create_todo_list(db, name, task)
	elsif input == 3
		puts "Enter task"
		task = gets.chomp
		delete_task(db, task)
	elsif input == 4
		puts "Enter new name and task to be completed (name-task)"
		name_and_task = gets.chomp.split('-')
		name = name_and_task[0]
		task = name_and_task[1]
		change_task_assignment(db, name, task)
	elsif input == 5
		puts "Have fun with your tasks.  Have a good day."
	else
		puts "Please Enter Valid Command"
	end
end



# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# show students from chicago on chicago page
get '/chicago' do
	@students = db.execute("SELECT * FROM students WHERE campus='chicago'")
	erb :chicago
end

get '/campuses/new' do
	erb :campuses
end

post '/campuses' do
	campus = params['campus']
  db.execute("INSERT INTO campuses (campus) VALUES (?)", [campus])
  redirect '/campuses/added'
end

get '/campuses/added' do
  @campuses = db.execute("SELECT * FROM campuses")
  erb :campus_locations
end


# add static resources
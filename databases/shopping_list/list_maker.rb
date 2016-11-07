#create a database that is the shopping list
require 'sqlite3'

list = SQLite3::Database.new("shopping_list.db")

create_table = <<-SQL 
	CREATE TABLE IF NOT EXISTS shopping(
		id INTEGER PRIMARY KEY,
		item VARCHAR(255),
		store VARCHAR(255),
		price INT
	)
SQL

#create insert method
def insert(db, item, store, price)
	db.execute("INSERT INTO shopping (item, store, price) VALUES (?, ?, ?)", [item, store, price])
end

#create remove method
def delete(db, itemname)
	db.execute("DELETE FROM shopping WHERE ? =item ", [itemname])
end


list.execute(create_table)
#prompt user for view, add or remove
puts "would you like to view, add or remove items?"
goal = gets.chomp
if goal == "view"
# => View
# print the shopping list

	p list.execute("SELECT * FROM shopping")
# => add
elsif goal == "add"
# request the name of the item		
	puts "what would you like to add?"
	item = gets.chomp

#create a loop to add multiple items
	until item == "done"		
#request what store it comes from
		puts "what store is it from?"
		store = gets.chomp
#request the price
		puts "how much will it cost?"
		price = gets.chomp
#put it in the database
		insert(list, item, store, price)
#ask for next item or end the loop
		puts "Type the name of the next item, or enter 'done' if done"
		item = gets.chomp
	end
	

# => remove
#ask the name of the item
elsif goal == "remove"
	puts "Which Item should I remove?"
	item = gets.chomp
	delete(shopping_list, item)

else 
	"thats not one of the options"
end




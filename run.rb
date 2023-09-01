require './task.rb'
require './list.rb'

puts "Welcome to Elevate List Manager"

loop do
puts "What would you like to do?"
puts "1 - Create List"
puts "2 - Add item to list"
puts "3 - Display items"
puts "4 - Mark item complete"
puts "5 - delete items"
puts "9 - To exit"

choice = gets.chomp.to_i

    case choice
    when 1
        puts "Name your list:"
        name = gets.chomp

        @list = List.new(name)

        puts "You have just created: #{@list.name}"

    when 2
        puts "Add item to #{@list.name}:"
        title = gets.chomp

        @list.add_item(title)
    when 3
        @list.display_items
    when 4
        @list.display_items
        index = gets.chomp.to_i

        item = @list.items[index - 1]
        item.complete_mark

        @list.display_items
    when 5
        @list.display_items
        puts "Choose item you want to delete:"
        index = gets.chomp.to_i

        item = @list.items[index - 1]
        @list.remove_item(item)

        # @list.remove_item(index - 1)

        @list.display_items
    when 9
        puts "Bye bye"
        exit
    end
end
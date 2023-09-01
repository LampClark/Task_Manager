class List
    attr_accessor :name

    def initialize(name)
        @name = name
        @items = []
    end

    def add_item(description)
        item = Item.new(description)
        @items << item
        puts "Item #{item.description} has been added."
    end

    def display_items
        puts "Items:"
        @items.each_with_index do |item, index|
        # status = item.completed? ? "[x]" : "[ ]"
        if item.completed?
            status = "[X]"
        else
            status = "[ ]"
        end

        puts "#{index + 1} - #{status} - #{item.description}"

        end
    end
end

# groceries = List.new("Groceries")
# groceries.add_item("Coffee")
# groceries.add_item("Sugar")
# groceries.add_item("Milk")
# groceries.display_items

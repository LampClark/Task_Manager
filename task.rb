class Task
    attr_accessor :description, :due_date, :completed, :assigned_to, :comments

    def initialize(description)
        @description = description
        @due_date = nil
        @completed = false
        @assigned_to = []
        @comments = {}
    end

    def completed?
        @completed
    end

    def mark_complete
        @completed = true
    end

    def mark_incomplete
        @completed = false
    end

    def assign_user(user)
        @assigned_to = user
    end

    def set_due_date(date)
        @due_date = date
    end

    def delete
        @description = nil
        @due_date = nil
        @completed = nil
        @assigned_to = nil
        @comments = nil
    end

    def remove_assign_user
        @assigned_to = nil
    end

    def add_comment(comment)
        @comments << comment
    end
end

# task1 = Item.new("This is my your first task.")

# puts "Task: #{task1.description}"
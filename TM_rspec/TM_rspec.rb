class Task 
    def initialize 
        @progress = 'in progress'
    end

    def set_title string
        @title = string
    end

    def set_description string
        @description = string
    end

    def set_progress string
        @progress = string
    end

    def get_title 
        @title
    end

    def get_description
        @description
    end

    def get_progress
        @progress
    end

    def get_status
        if @progress == 'in progress'
            "Your task '#{ @title }' is IN PROGRESS."
        elsif @progress == 'done'
            "This task '#{ @title }' is DONE." 
        end
    end
end

class TaskList
    def initialize
        @list = []
    end

    def add_task task
        @list << task
    end

    def get_list
        @list
    end

    def get_done
        #select through our tasks, at each value we need to check status
        done_list = @list.select do |value|
            # it's done return it in the new array
            value.get_progress == 'done'
        end
        done_list
    end

    def get_incomplete
        incomplete_list = @list.select do |value|
            value.get_progress == 'in progress'
        end
        incomplete_list
    end
end
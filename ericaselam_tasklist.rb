# User Stories
# Story: As a developer, I can create a Task.
class Tasks
    def initialize title, description
        @title = title
        @description = description
        @status = "Not Done"
    end

    def set_status(status)
        @status = status
    end

    def get_task_info
        @title
        @description
        @done
    end

    def show_task_info
        puts "The #{@description} for #@title is #@status."
    end 
end

task_1 = Tasks.new "Car", "Oil change"
task_1.set_status "being worked on now"
puts task_1.show_task_info



# Story: As a developer, I can give a Task a title and retrieve it.

# Story: As a developer, I can give a Task a description and retrieve it.

# Story: As a developer, I can mark a Task done.

# Story: As a developer, when I print a Task that is done, its status is shown.
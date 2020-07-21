# User Stories
# Story: As a developer, I can create a Task.
class Tasks
    def initialize (title, description)
        # Story: As a developer, I can give a Task a title and retrieve it.
        @title = title
        # Story: As a developer, I can give a Task a description and retrieve it.
        @description = description
        @status = "Not Done"
    end
    
    # Story: As a developer, I can mark a Task done.
    def set_status status
        @status = status
    end

    def get_task_info
        @title
        @description
        @status
    end
    
    def show_task_info
        # Story: As a developer, when I print a Task that is done, its status is shown.
        puts "The #{@description} for #@title is #@status."
    end 
end

task_1 = Tasks.new "Car", "Oil change"
task_1.set_status "being worked on now"
puts task_1.show_task_info

#--------Selam Driving----------------------------------------------------------------------------------------------

class Taskslist
    def initialize (title, description, date)
        # Story: As a developer, I can give a Task a title and retrieve it.
        @title = title
        # Story: As a developer, I can give a Task a description and retrieve it.
        @description = description
        @status = "Not Done"
        @date = date

    end
    
    # Story: As a developer, I can mark a Task done.
    def set_status(status)
        @status = status
    end

    def get_task_info
        @title
        @description
        @status
        @date
    end
    
    def show_task_info
        # Story: As a developer, when I print a Task that is done, its status is shown.
        puts "The #{@description} for #@title is #@status."
        puts "This task was created on #{@date}."
    end 
end

task_2 = Taskslist.new "Car", "Oil change", "7/21/2020"
task_2.set_status "being worked on now"
puts task_2.show_task_info





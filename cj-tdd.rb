# Story: As a developer, I can create a Task.
class Task 
    def initialize (title, description, status = 'in progress')
    # Story: As a developer, I can give a Task a title and retrieve it.
    @title = title 
    # Story: As a developer, I can give a Task a description and retrieve it.
    @description = description
    # Story: As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
    @status = status
    end 
    # Story: As a developer, when I print a Task that is done, its status is shown.
    def set_status status
    @status = status
    end 
    def get_info 
        "Today you must do the #{@title} by #{@description} which is #{@status} "
    end 
end 

get_task_info = Task.new 'Laundry', 'washing all socks', 'done'
puts get_task_info.get_info


class TaskList < Task
    def initialize(title, description, status)
        super(title)
        @title = title
    end
    def show_info 
        "Your Tasks today are #{@title}"
    end
end
 yard_work = TaskList.new 'weed wacking', 'vacuming', 'dusting'
 yard_work.show_info

# Story: As a developer, I can add all of my Tasks to a TaskList.

# Story: As a developer with a TaskList, I can print the completed items.

# Story: As a developer with a TaskList, I can print the incomplete items.




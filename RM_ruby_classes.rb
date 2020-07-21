class Task
    def set_name(name)
        @name = name
    end

    def get_name
        @name
    end

    def set_description(description)
        @description = description
    end

    def get_description
        @description
    end

    def set_done(done)
        @done = done
    end

    def get_done
        @done
    end

    def get_status 
        if @done == 'done'
            puts "#{@name}: #{@description}. This task is #{@done}."
        else
            puts 'This task is not done yet.'
        end
    end
end

new_task = Task.new 

new_task.set_name 'Groceries'

# puts new_task.get_name

new_task.set_description 'Buy groceries today after class'

# puts new_task.get_description

new_task.set_done 'done'

# puts new_task.get_status

puts new_task.get_status

####### Story: As a developer, I can create a Task. 

####### Story: As a developer, I can give a Task a title and retrieve it.

####### Story: As a developer, I can give a Task a description and retrieve it.

####### Story: As a developer, I can mark a Task done.

# Story: As a developer, when I print a Task that is done, its status is shown.
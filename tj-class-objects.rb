# As a developer, I can create a Task.

# class Task
#     def set_task_name string
#         @task_name = string
#     end
#     def get_task_name 
#         @task_name
#     end
#     def set_task_status string 
#         @task_status = string
#     end
#     def get_task_status
#         @task_status 
#         "The #{@task_name} is #{@task_status}!"
#     end
# end 

# task_checker = Task.new
# task_checker.set_task_name 'Laundry'
# task_checker.set_task_status 'Pretty much done'

# puts task_checker.get_task_status

class Task 
    def initialize (task, status)
        @task = task
        @status = status 
    end
    def get_task_status
         "The #{@task} is #{@status}!"
    end
    def change_task_status status
        @status = status
    end
end

    task_checker = Task.new 'cleaning', 'not even close to being done'
    puts task_checker.get_task_status
    task_checker.change_task_status 'is now done'
    puts task_checker.get_task_status



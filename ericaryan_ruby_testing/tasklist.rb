class TaskList
    def initialize
        @tasks = []
        @done_tasks = []
        @in_progress_tasks = []

    end

    def get_list
        @tasks
    end

    def set_done_tasks task
        if task.get_status == 'done'
            @done_tasks << task.get_title
            @in_progress_tasks = @in_progress_tasks.select do |value|
                value != task.get_title
            end
        end
    end

    def get_done_tasks
        @done_tasks
    end

    def set_in_progress_tasks task
        if task.get_status == 'in progress'
            @in_progress_tasks << task.get_title
            @done_tasks = @done_tasks.select do |value|
                value != task.get_title
        end
    end

    def get_in_progress_tasks
        @in_progress_tasks
    end

    # def add_to_list task
    #     @tasks << task
    # end
end
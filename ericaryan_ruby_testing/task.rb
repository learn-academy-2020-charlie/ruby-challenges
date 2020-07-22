class Task
    def initialize title = 'my task'
        @title = title
        @status = 'in progress'
    end

    def set_description description
        @description = description
    end

    def set_status status
        @status = status
    end
    
    def get_title
        @title
    end

    def get_description
        @description
    end

    def get_status
        @status
    end

end
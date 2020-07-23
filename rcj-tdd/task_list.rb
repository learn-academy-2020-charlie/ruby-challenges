class TaskList
  def initialize
    @task_collections = []
  end
  def add_task task
    @task_collections << task
  end
  def task_collections
    @task_collections
  end
end

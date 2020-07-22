class Task
  def initialize status = 'work in progress'
    @status = status
  end
  def title= title
    @title = title
  end
  def title
    @title
  end

  def description= description
    @description = description
  end
  def description
    @description
  end

  def status= status
    @status = status
  end
  def status
    @status
  end
end

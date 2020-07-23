require 'rspec'
require_relative 'task'
require_relative 'task_list'

# Story: As a developer, I can create a Task.
describe Task do
  it 'acutally exists' do
    expect{Task.new}.to_not raise_error
  end
  # Story: As a developer, I can give a Task a title and retrieve it.

  it 'has a title' do
    my_task = Task.new
    my_task.title = 'Laundry'
    expect(my_task.title).to be_a String
    expect(my_task.title).to eq 'Laundry'
  end

  # Story: As a developer, I can give a Task a description and retrieve it.
  it 'has a description' do
    my_description = Task.new
    my_description.description = 'Wash the sheets'
    expect(my_description.description).to be_a String
    expect(my_description.description).to eq 'Wash the sheets'
  end

  # Story: As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
  it 'has a default status' do
    my_status = Task.new
    # my_status.status = 'Definitely done'
    expect(my_status.status).to be_a String
    expect(my_status.status).to eq 'work in progress'
  end

  # Story: As a developer, when I print a Task that is done, its status is shown.
  it 'has a custom status' do
    my_status = Task.new
    my_status.status = 'Definitely done'
    expect(my_status.status).to be_a String
    expect(my_status.status).to eq 'Definitely done'
  end
end

# Story: As a developer, I can add all of my Tasks to a TaskList.

describe TaskList do

  it 'has to be real' do
      expect{TaskList.new}.to_not raise_error
    end
    # Story: As a developer with a TaskList, I can print the completed items.

    it 'has an array' do
      my_task = Task.new
      my_task_array = TaskList.new
      expect(my_task_array.task_collections).to be_a Array
      my_task_array.add_task my_task
      expect(my_task_array.task_collections).to_not be_empty
    end
    # Story: As a developer with a TaskList, I can print the incomplete items.

end
#
#
# Stretch: Due Date
# Story: As a developer, I can create a DueDateTask, which is_a Task that has_a due date. Hint: Use the built-in Ruby Date class
#
# Story: As a developer, I can print an item with a due date with labels and values. Hint: When implementing to_s, use super to call to_s on the super class.
#
# Story: As a developer, I can add items with due dates to my TaskList. Hint: Consider keeping items with due dates separate from the other items.
#
# Story: As a developer with a TaskList, I can list all the not completed items that are due today.
#
# Story: As a developer with a TaskList, I can list all the not completed items in order of due date.
#
# Story: As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.
#
# Epic: Anniversary
# Story: As a developer, I can create a to do item for an anniversary (a yearly recurring event). Hint: An Anniversary has a month and a day. Hint: An Anniversary is a special kind of DueDateTask where the due date changes depending on the current date (override the due_date method to return the next anniversary date).
#
# Story: As a developer, I can print an item for an anniversary with field labels and values.
#
# Story: As a developer with a TaskList with and without due dates and yearly recurring dates, I can list all the not completed items in order of due date and yearly dates for the current month.
#
# Story: As a developer with a TaskList with a collection of items with and without due dates and yearly recurring dates, I can list all the not completed items in order of due date and yearly dates for the current month, then the items without due dates.

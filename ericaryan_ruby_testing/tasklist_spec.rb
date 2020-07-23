require 'rspec'
require_relative 'task'
require_relative 'tasklist'

# Story: As a developer, I can create a Task.

# Story: As a developer, I can give a Task a title and retrieve it.

# Story: As a developer, I can give a Task a description and retrieve it.

# Story: As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.

# Story: As a developer, when I print a Task that is done, its status is shown.

# Story: As a developer, I can add all of my Tasks to a TaskList.

# Story: As a developer with a TaskList, I can print the completed items.

# Story: As a developer with a TaskList, I can print the incomplete items.

describe 'Task' do

    it 'has to exist' do
        expect { Task.new }.to_not raise_error
    end

    it 'has a title' do
        my_task = Task.new 'Laundry'
        expect(my_task.get_title).to be_a String
        expect(my_task.get_title).to eq 'Laundry'
    end

    it 'can have a description' do
        my_task = Task.new 'Laundry'
        my_task.set_description 'Wash and fold clothes'
        expect(my_task.get_description).to be_a String
        expect(my_task.get_description).to eq 'Wash and fold clothes'
    end

    it 'has initial status of in progress and' do
        my_task = Task.new 'Laundry'
        expect(my_task.get_status).to eq 'in progress'
        expect{my_task.set_status 'done'}.to change{my_task.get_status}.from('in progress').to('done')
    end
    
    it 'has status that shows done' do
        my_task = Task.new 'Laundry'
        my_task.set_status 'done'
        expect(my_task.get_status).to eq 'done'

    end


end

describe 'TaskList' do
    it 'has to be real' do
        expect{ TaskList.new }.to_not raise_error
    end

    it 'can have a list of tasks' do
        my_tasklist = TaskList.new
        expect(my_tasklist.get_list).to be_a Array
        expect(my_tasklist.get_list).to eq []
    end
    
    it 'prints list of completed tasks' do
        my_tasklist = TaskList.new
        my_task = Task.new 'Laundry'
        my_tasklist.set_in_progress_tasks my_task
        expect(my_tasklist.get_in_progress_tasks).to eq ['Laundry']
        my_tasklist.set_done_tasks my_task
        expect(my_tasklist.get_done_tasks).to eq []
        my_task.set_status 'done'
        my_tasklist.set_done_tasks my_task
        expect(my_tasklist.get_done_tasks).to eq ['Laundry']
        expect(my_tasklist.get_in_progress_tasks).to eq []
    end

        
    it 'prints list of incomplete tasks' do
        my_tasklist = TaskList.new
        my_task = Task.new 'Laundry'
        my_tasklist.set_in_progress_tasks my_task
        expect(my_tasklist.get_in_progress_tasks).to eq ['Laundry']
    end

    
end
require 'rspec'
require_relative 'TM_rspec' #name of the file (book.rb)

# Story: As a developer, I can create a Task.
describe Task do
    it 'has to be real' do
        expect {Task.new}.to_not raise_error
    end
    # {} means testing for a behavior
    
    # Story: As a developer, I can give a Task a title and retrieve it.
    it 'has a title' do
        my_task = Task.new 
        my_task.set_title 'laundry'
        expect(my_task.get_title).to be_a String
        expect(my_task.get_title).to eq 'laundry'
    end
    
    # Story: As a developer, I can give a Task a description and retrieve it.
    it 'has a description' do
        my_task = Task.new
        my_task.set_description 'do your laundry dude'
        expect(my_task.get_description).to be_a String
        expect(my_task.get_description).to eq 'do your laundry dude'
    end
    
    
    # Story: As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
    it 'initializes in progress and marks done' do
        my_task = Task.new
        expect(my_task.get_progress).to be_a String
        expect(my_task.get_progress).to eq 'in progress'
        my_task.set_progress 'done'
        expect(my_task.get_progress).to be_a String
        expect(my_task.get_progress).to eq 'done'
    end
    
    # Story: As a developer, when I print a Task that is done, its status is shown.
    it 'shows status when done' do
        my_task = Task.new
        my_task.set_title 'laundry'
        expect(my_task.get_status).to be_a String
        expect(my_task.get_status).to eq "Your task '#{ my_task.get_title }' is IN PROGRESS."
        my_task.set_progress 'done'
        expect(my_task.get_status).to be_a String
        expect(my_task.get_status).to eq "This task '#{ my_task.get_title }' is DONE." 
    end
end

describe TaskList do
    it 'has to be real' do
        expect{ TaskList.new }.to_not raise_error
    end
        
    # Story: As a developer, I can add all of my Tasks to a TaskList.
    it 'can add tasks to a task list' do
        my_task = Task.new
        my_tasklist = TaskList.new
        expect(my_tasklist.get_list).to be_a Array
        expect(my_tasklist.get_list).to eq []
        my_tasklist.add_task my_task
        expect(my_tasklist.get_list).to be_a Array
        expect(my_tasklist.get_list).to eq [my_task]
    end

    # Story: As a developer with a TaskList, I can print the completed items.
    it 'can return completed items' do
        my_task = Task.new
        my_task.set_progress 'done'
        my_tasklist = TaskList.new
        my_tasklist.add_task my_task
        expect(my_tasklist.get_done).to be_a Array
        expect(my_tasklist.get_done).to eq [my_task]
    end

    # Story: As a developer with a TaskList, I can print the incomplete items.
    it 'can return incomplete items' do
        my_task = Task.new
        my_task_2 = Task.new
        my_task_2.set_progress 'done'
        my_tasklist = TaskList.new
        my_tasklist.add_task my_task
        my_tasklist.add_task my_task_2
        expect(my_tasklist.get_incomplete).to be_a Array
        expect(my_tasklist.get_incomplete).to eq [my_task]
    end
end
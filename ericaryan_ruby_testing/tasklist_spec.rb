require 'rspec'
require_relative 'tasklist'

# Story: As a developer, I can create a Task.

# Story: As a developer, I can give a Task a title and retrieve it.

# Story: As a developer, I can give a Task a description and retrieve it.

# Story: As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.

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

    it 'has status that can be updated' do
        my_task = Task.new 'Laundry'
        expect(my_task.get_status).to eq 'in progress'
        expect{my_task.set_status 'done'}.to change{my_task.get_status}.from('in progress').to('done')
    end

end
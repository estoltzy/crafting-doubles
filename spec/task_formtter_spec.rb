require 'task_formatter'

RSpec.describe TaskFormatter do
  it 'initializes an instance of Task' do
    fake_task = double(:task, title: "Wash the car")
    formatter = TaskFormatter.new(fake_task)
    expect(formatter).to be
  end

  it 'returns - [ ] Task title if task is not complete' do
    fake_task = double(:task, title: "Wash the car", complete?: false)
    formatter = TaskFormatter.new(fake_task)
    expect(formatter.format).to eq "- [ ] Wash the car"
  end

  it 'returns - [x] Task title if task is complete' do
    fake_task = double(:task, title: "Wash the car", complete?: true)
    formatter = TaskFormatter.new(fake_task)
    expect(formatter.format).to eq "- [x] Wash the car"
  end
end
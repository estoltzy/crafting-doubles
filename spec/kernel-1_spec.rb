require 'kernel-1'

RSpec.describe InteractiveCalculator do

  it 'subtracts 2 numbers and gives a result' do
    io = double :kernel
    expect(io).to receive(:puts).with("Hello. I will subtract two numbers.")
    expect(io).to receive(:puts).with("Please enter a number")
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Please enter another number")
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with("Here is your result:")
    expect(io).to receive(:puts).with("4 - 3 = 1")
    interactive_calculator = InteractiveCalculator.new(io)
    interactive_calculator.run
  end

  it 'subtracts 2 numbers and gives a result' do
    io = double :kernel
    expect(io).to receive(:puts).with("Hello. I will subtract two numbers.")
    expect(io).to receive(:puts).with("Please enter a number")
    expect(io).to receive(:gets).and_return("5")
    expect(io).to receive(:puts).with("Please enter another number")
    expect(io).to receive(:gets).and_return("2")
    expect(io).to receive(:puts).with("Here is your result:")
    expect(io).to receive(:puts).with("5 - 2 = 3")
    interactive_calculator = InteractiveCalculator.new(io)
    interactive_calculator.run
  end

  it 'subtracts 2 numbers' do
    interactive_calculator = InteractiveCalculator.new(Kernel)
    expect(interactive_calculator.calculation("4", "3")). to eq 1
  end

end


# Hello. I will subtract two numbers. -> puts
# Please enter a number -> puts
# 4 -> gets
# Please enter another number -> puts
# 3 -> gets
# Here is your result: -> puts
# 4 - 3 = 1 -> puts
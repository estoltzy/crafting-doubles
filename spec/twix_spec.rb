require 'twix'

RSpec.describe StringRepeater do
  it 'repeats a given string a given number of times' do
    io_dbl = double :kernel
    expect(io_dbl).to receive(:puts).with("Hello. I will repeat a string many times.")
    expect(io_dbl).to receive(:puts).with("Please enter a string")
    expect(io_dbl).to receive(:gets).and_return("TWIX")
    expect(io_dbl).to receive(:puts).with("Please enter a number of repeats")
    expect(io_dbl).to receive(:gets).and_return("10")
    expect(io_dbl).to receive(:puts).with("Here is your result:")
    expect(io_dbl).to receive(:puts).with("TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX")
    string_repeater = StringRepeater.new(io_dbl)
    string_repeater.run
  end

  it 'repeats a given string a given number of times' do
    io_dbl = double :kernel
    expect(io_dbl).to receive(:puts).with("Hello. I will repeat a string many times.")
    expect(io_dbl).to receive(:puts).with("Please enter a string")
    expect(io_dbl).to receive(:gets).and_return("SNICKERS")
    expect(io_dbl).to receive(:puts).with("Please enter a number of repeats")
    expect(io_dbl).to receive(:gets).and_return("3")
    expect(io_dbl).to receive(:puts).with("Here is your result:")
    expect(io_dbl).to receive(:puts).with("SNICKERSSNICKERSSNICKERS")
    string_repeater = StringRepeater.new(io_dbl)
    string_repeater.run
  end
end


# Hello. I will repeat a string many times. -> puts
# Please enter a string -> puts
# TWIX -> gets
# Please enter a number of repeats -> puts
# 10 -> gets
# Here is your result: ->puts
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX ->puts
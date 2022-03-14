require 'diary'

RSpec.describe Diary do
  it 'returns the contents of the diary' do
    diary = Diary.new("blah blah")
    expect(diary.read).to eq "blah blah"
  end
end
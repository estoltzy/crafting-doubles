require 'diary'
require 'secret_diary'

RSpec.describe ' diary integration' do
  it 'initializes' do
    diary = Diary.new("asdfg")
    secret_diary = SecretDiary.new(diary)
    expect(secret_diary).to be
  end

  it 'starts the diary as locked' do
    diary = Diary.new("asdfg")
    secret_diary = SecretDiary.new(diary)
    expect(secret_diary.read).to eq "Go away!"
  end

  it 'unlocks the diary and returns the contents' do
    diary = Diary.new("asdfg")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "asdfg"
  end

  it 're-locks the diary' do
    diary = Diary.new("asdfg")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    secret_diary.lock
    expect(secret_diary.read).to eq "Go away!"
  end
end
require 'secret_diary'

RSpec.describe SecretDiary do
  it 'returns the diary contents as a string' do
    fake_diary = double(:diary, contents: "blah")
    secret_diary = SecretDiary.new(fake_diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "blah"
  end

  it 'starts diary off as locked' do
    fake_diary = double(:diary, contents: "a")
    secret_diary = SecretDiary.new(fake_diary)
    secret_diary.lock
    expect(secret_diary.read).to eq "Go away!"
  end

  it 'locks the diary' do
    fake_diary = double(:diary, contents: "a")
    secret_diary = SecretDiary.new(fake_diary)
    secret_diary.unlock
    secret_diary.lock
    expect(secret_diary.read).to eq "Go away!"
  end
end
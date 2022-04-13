require 'api_challenge'

RSpec.describe CatFacts do
  it 'returns a cat fact' do
    fake_requester = double :requester
    expect(fake_requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"A cat\u2019s hearing is better than a dog\u2019s. And a cat can hear high-frequency sounds up to two octaves higher than a human.","length":119}')
    cat_fact = CatFacts.new(fake_requester)
    expect(cat_fact.provide).to eq "Cat fact: A cat\u2019s hearing is better than a dog\u2019s. And a cat can hear high-frequency sounds up to two octaves higher than a human."
  end
end
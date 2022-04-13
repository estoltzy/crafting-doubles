require 'api_testing'

RSpec.describe TimeError do
  it 'returns the difference in seconds' do
<<<<<<< HEAD
    requester_dbl = double :requester
    time_error = TimeError.new(requester_dbl)
    from_time = Time.new(2022, 03, 14, 14, 10, 04)
    to_time = Time.new(2022, 03, 14, 16, 10, 04)
    allow(time_error).to receive(:get_server_time).and_return(to_time)
    allow(Time).to receive(:now).and_return(from_time)
    expect(time_error.error).to eq 7200.0
  end

  it 'returns the server time' do
    requester_dbl = double :requester
    time_error = TimeError.new(requester_dbl)
    from_time = Time.new(2022, 03, 14, 14, 10, 04)
    to_time = Time.new(2022, 03, 14, 16, 10, 04)
    allow(Time).to receive(:now).and_return(from_time)
    allow(requester_dbl).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"GMT","client_ip":"2.25.179.217","datetime":"2022-03-14T16:41:36.214527+00:00","day_of_week":1,"day_of_year":73,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1647276096,"utc_datetime":"2022-03-14T16:41:36.214527+00:00","utc_offset":"+00:00","week_number":11}')
    expect(time_error.error).to eq 9092.214527
=======
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"GMT","client_ip":"2.25.179.217","datetime":"2022-03-14T16:41:36.214527+00:00","day_of_week":1,"day_of_year":73,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1647276096,"utc_datetime":"2022-03-14T16:41:36.214527+00:00","utc_offset":"+00:00","week_number":11}')
    time = Time.new(2022, 03, 14, 14, 10, 04)
    time_error = TimeError.new(fake_requester)
    expect(time_error.error(time)).to eq 9092.214527
>>>>>>> 3c41ed164f118462f34c420fff9d4258972f26a2
  end
end
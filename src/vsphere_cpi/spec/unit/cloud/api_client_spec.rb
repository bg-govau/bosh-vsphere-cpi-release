require 'spec_helper'

describe 'NSXTPolicy' do
  it 'encodes [' do
    client = NSXTPolicy::ApiClient.new
    actualRespone = client.build_request_url('this has a [ bracket')
    expect(actualRespone).to eq('https://nsxmanager.your.domain/policy/api/v1/this%20has%20a%20%5B%20bracket')
  end
end

require 'spec_helper'

describe ZenviaS4m do
  it 'has a version number' do
    expect(ZenviaS4m::VERSION).not_to be nil
  end

	it 'has a account' do 
		expect(true).to ZenviaS4m::account   
	end

	it 'has a code' do
		expect(true).to ZenviaS4m::code 
	end
  
  it 'has a url webservice' do 
    expect(true).to ZenviaS4m::url
  end

  it 'has a message, phone number and  sms id' do
  	zen = ZenviaS4m::SendSms.new({ phone: '5521988887777', message: 'Bazinga', sms_id: '12333'})
    expect(zen).to be_valid
  end
end

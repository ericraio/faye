require 'spec_helper'

describe WebServices::Facebook do

  describe '#initialize(facebook_auth_token)' do
    before :each do
      @auth_token = mock('facebook_auth_token')
    end
    it 'should return facebook data' do
      expected = Koala::Facebook::API.should_receive(:new).and_return(@auth_token)
      WebServices::Facebook.new(@auth_token).should == expected
    end
  end

end

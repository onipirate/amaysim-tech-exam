require_relative '../lib/refer.rb'

RSpec.describe 'Amaysim Refer a friend' do

  let(:env) {'https://www.amaysim.com.au'}
  let(:refer) do
    @refer=Refer.new(env)
    @refer.login_as('0466134574','AWqasde321')
    @refer.navigate_to_refer_friend_page
  end

  it 'is accessible when you login' do
    refer
    expect(@refer.url_page).to include('https://www.amaysim.com.au/my-account/my-amaysim/refer_friends')
  end

  context 'Can Send an Invite Email' do
    before(:example) { refer }

    it 'using 1 email address' do
      @refer.email_set('jcsupp@gmail.com')
      expect(@refer.message).to eq('THANKS FOR SHARING THE BIG LOVE')
    end

    it 'using multiple email address' do
      @refer.email_set('jcsupp@gmail.com,jcsserv@gmail.com')
      expect(@refer.message).to eq('THANKS FOR SHARING THE BIG LOVE')
    end
  end
  
  after(:example) do
    @refer.close
  end
end
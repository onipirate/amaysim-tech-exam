RSpec.describe 'Amaysim Refer a friend' do 
  it 'is accessible when you login' do
    @refer=Amaysim.new('PROD')
    expect(@refer.title).to eq('My Amaysim')
  end
  
  it 'can enter an email and submit' do
    @refer.email_set('jcsupp@gmail.com')
    expect(@refer.message).to eq('Thank you')
  end

  it 'can enter multiple email address and submit' do
    @refer.email_set('jcsupp@gmail.com,jcsserv@gmail.com')
    expect(@refer.message).to eq('Thank you')
  end

  it 'can share again' do
  end

  it 'copy the invitation link to the clipboard' do
  end
end
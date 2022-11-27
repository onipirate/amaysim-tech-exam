RSpec.describe 'Check out one instance' do
  let(:hey) {'hey'}

  it 'starts here' do
    expect(hey).to eq 'hey'
  end

  it 'reuse it here' do
    expect(hey).to eq 'hey'
  end


end
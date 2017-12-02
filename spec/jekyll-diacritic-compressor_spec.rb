RSpec.describe JekyllDiacriticCompressor do
  compress = described_class.new.method(:compress)

  it 'replaces chars with combining diacritical marks by single codepoints' do
    expect(compress.call("n\xCC\x83A\xCC\x88i\xCC\x81")).to eq 'ñÄí'
  end

  it 'does not remove chars that are already combined' do
    expect(compress.call('ñÄí')).to eq 'ñÄí'
  end

  it 'does not remove any other chars' do
    expect(compress.call('foo😁bar')).to eq 'foo😁bar'
  end
end

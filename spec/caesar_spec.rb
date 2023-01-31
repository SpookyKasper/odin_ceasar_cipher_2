require "./lib/caesar.rb"

describe "#ceaser_cipher" do
  it "shifts a single letter up the alphabet" do
    expect(ceaser_cipher('d', 3)).to eql('g')
  end

  it "shifts multiple letters up the alphabet" do
    expect(ceaser_cipher('lmn', 5)).to eql('qrs')
  end

  it "loops when alphabet end" do
    expect(ceaser_cipher('xyz', 3)).to eql('abc')
  end

  it "deals with mixed case strings" do
    expect(ceaser_cipher('XyZ', 3)).to eql('AbC')
  end

  it "deals with spaces and punctuation" do
    expect(ceaser_cipher('xYz! yes', 3)).to eql('aBc! bhv')
  end

  it "deals with an empty string" do
    expect(ceaser_cipher('', 3)).to eql('')
  end
end

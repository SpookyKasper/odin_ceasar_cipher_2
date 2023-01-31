require "./lib/caesar.rb"

describe "#ceaser_cipher" do
  it "shifts a single letter up the alphabet" do
    expect(ceaser_cipher('d', 3)).to eql('g')
  end

  it "shifts multiple letters up the alphabet" do
    expect(ceaser_cipher('lmn', 5)).to eql('qrs')
  end
end

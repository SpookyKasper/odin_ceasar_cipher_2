require "./lib/caesar.rb"

describe "#ceaser_cipher" do
  it "shifts a single letter up the alphabet by the number of the passed argument" do
    expect(ceaser_cipher('d', 3)).to eql('g')
  end
end

require_relative "../lib/caesar_cipher"

describe "caesar_cipher should" do
  it "switch letters" do
    expect(caesar_cipher('hello',1)).to eq("ifmmp")
    expect(caesar_cipher('HELLO',1)).to eq("IFMMP")
    expect(caesar_cipher('z',1)).to eq("a")
    expect(caesar_cipher('Z',3)).to eq("C")
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end

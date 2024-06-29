require './caesar-cipher/main'

describe "#caesar_cipher" do
  it "returns the unaltered string" do
    expect(caesar_cipher("test", 0)).to eql("test")
  end

  it "returns the example correctly" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end

  it "returns the string shifted one character" do
    expect(caesar_cipher("test", 1)).to eql("uftu")
  end

  it "accepts negative shifts" do
    expect(caesar_cipher("test", -1)).to eql("sdrs")
  end

  it "loops after 26 shifts" do
    expect(caesar_cipher("test", 27)).to eql("uftu")
  end

  it "handles punctuation" do
    expect(caesar_cipher("test. test, test!", 1)).to eql("uftu. uftu, uftu!")
  end

  it "keeps same case" do
    expect(caesar_cipher("TEST", 1)).to eql("UFTU")
  end

  it "loops after 26 negative shifts" do
    expect(caesar_cipher("test", -27)).to eql("sdrs")
  end
end

require_relative "../lib/multiples"

describe "the multiple_3_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(multiple_3_5?(3)).to eq(true)
    expect(multiple_3_5?(5)).to eq(true)
    expect(multiple_3_5?(51)).to eq(true)
    expect(multiple_3_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(multiple_3_5?(4)).to eq(false)
    expect(multiple_3_5?(7)).to eq(false)
  end
end


describe "the sum_multiples_3_5 method" do
  it "should return the sum of multiples when valid number" do
    expect(sum_multiples_3_5(10)).to eq(23)
    expect(sum_multiples_3_5(11)).to eq(33)
    expect(sum_multiples_3_5(0)).to eq(0)
    expect(sum_multiples_3_5(3)).to eq(0)
  end

  it "sould reject non natural integer arguments" do
    expect(sum_multiples_3_5(-5)).to eq("error")
    expect(sum_multiples_3_5(1.26)).to eq("error")
    expect(sum_multiples_3_5("why ?")).to eq("error")
  end
end

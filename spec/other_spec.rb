require_relative "../lib/other"

describe "day_trader should" do
  it "tell the best trading days" do

    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
  end
end

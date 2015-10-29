describe "Poker Hand Comparator" do

  before :each do
    @left = PokerHand.new
    @right = PokerHand.new
  end

  it "compares two empty hands as a tie" do
    expect(@left <=> @right).to eq 0
  end

  it "the high card wins" do
    @left << '2S'
    @right << '3S'
    expect(@left <=> @right).to eq -1
  end

  it "the left card wins if it is high" do
    @left << '3S'
    @right << '2S'
    expect(@left <=> @right).to eq 1
  end

  it "the cards are equal it is a tie" do
    @left << '3S'
    @right << '3S'
    expect(@left <=> @right).to eq 0
  end

end

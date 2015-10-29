class PokerHand

  attr_reader :card

  def <=> other
    return 0 if @card.nil?
    return self.card <=> other.card
  end

  def << card
    @card = card
  end
end

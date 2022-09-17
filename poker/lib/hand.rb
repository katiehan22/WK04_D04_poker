

class Hand
  attr_reader :hand_arr

  def initialize(hand_arr)
      @hand_arr = hand_arr
      @points = 0
  end
end
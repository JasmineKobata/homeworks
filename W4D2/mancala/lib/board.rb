class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {|e| e = []}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0..13).each do |i|
      4.times {@cups[i] << :stone} if i%7 != 6
    end
  end

  def valid_move?(start_pos)
    if start_pos < 0 || start_pos > 14
      raise ArgumentError.new("Invalid starting cup")
    elsif @cups[start_pos].empty?
      raise ArgumentError.new("Starting cup is empty")
    end
  end

  def make_move(start_pos, current_player_name)
    num = @cups[start_pos].length
    @cups[start_pos] = []
    idx = start_pos

    num.times do
      if (idx == 5  && start_pos > 6)||(idx == 12 && start_pos < 6)
        idx = (idx+2)%14
      else
        idx = (idx+1)%14
      end
      @cups[idx] << :stone
    end
    render
    next_turn(idx)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    return :prompt if ending_cup_idx % 7 == 6
    return :switch if @cups[ending_cup_idx].empty?
    ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end

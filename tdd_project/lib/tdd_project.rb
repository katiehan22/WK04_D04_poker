
def my_uniq(array)
    uniq_hash = {}
    array.each do |ele|
        uniq_hash[ele] = true
    end

    uniq_hash.keys
end

class Array 
  def two_sum 
    new_arr = []
    self.each_with_index do |ele1, idx1|
      self.each_with_index do |ele2, idx2|
        if idx1 < idx2 && ele1 + ele2 == 0
          new_arr << [idx1, idx2]
        end
      end
    end
    new_arr
  end
end

def my_transpose(array)
    new_arr = []
    (0...array.length).each do |i|
        subarray = []
        array.each do |row|
            subarray << row[i]
        end
        new_arr << subarray
    end
    new_arr
end

def stock_picker(array)
    pair = []
    difference = 0
    array.each_with_index do |ele1, idx1|
      array.each_with_index do |ele2, idx2|
        if idx1 < idx2 && (ele2 - ele1) > difference
          difference = ele2 - ele1
          pair = [idx1, idx2]
        end
      end
    end
    pair
end

class TowersOfHanoi
    attr_reader :arr1, :arr2, :arr3
    def initialize
        @arr1 = [4,3,2,1]
        @arr2 = []
        @arr3 = []
    end

    def move(start_pos, end_pos)
        if start_pos == 1
            if end_pos == 2
                @arr2.push(@arr1.pop)
            else
                @arr3.push(@arr1.pop)
            end
        elsif start_pos == 2
            if end_pos == 1
                @arr1.push(@arr2.pop)
            else
                @arr3.push(@arr2.pop)
            end
        else
            if end_pos == 1
                @arr1.push(@arr3.pop)
            else
                @arr2.push(@arr3.pop)
            end
        end
    end

    def get_move 
      puts "Enter a start and end position separated with a space like `4 7`:"
      user_move = gets.chomp.split(" ")
      start_pos = user_move[0].to_i 
      end_pos = user_move[1].to_i 
      self.move(start_pos, end_pos)
    end

    def won?
      @arr3 == [4,3,2,1]
    end

    def play 
      until self.won?
        self.get_move
      end
    end


end
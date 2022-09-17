require 'rspec'
require 'tdd_project'

describe 'my_uniq' do

    it 'should return array with duplicates removed' do
        expect(my_uniq([1,2,1,3,3])).to eq([1,2,3])
        expect(my_uniq([1,2,3])).to eq([1,2,3])
    end

end

describe Array do 
  describe '#two_sum' do 
    it 'should return an array with pairs of positions where elements sum to zero' do 
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
      expect([0, 7, 5, -5, 4].two_sum).to eq([[2,3]])
    end
  end
end

describe "my_transpose" do
    it 'should convert between the row oriented and column oriented representations' do 
        expect(my_transpose([[0,1,2],[3,4,5],[6,7,8]])).to eq([[0,3,6],[1,4,7],[2,5,8]])
    end
end

describe "stock_picker" do 
    it 'should return the most profitable case' do 
        expect(stock_picker([1,3,2,5,4])).to eq([0,3])
        expect(stock_picker([5.0, 2.5, 0.7, 0.1, 2.3])).to eq([3,4])
    end
end

describe TowersOfHanoi do 
    let(:towers){TowersOfHanoi.new}
    describe '#initialize' do
        it 'should set 3 array at the start of the game' do
            expect(towers.instance_variable_get(:@arr1)).to eq([4,3,2,1])
            expect(towers.instance_variable_get(:@arr2)).to eq([])
            expect(towers.instance_variable_get(:@arr3)).to eq([])
        end
    end

    describe '#move' do 
        it 'should a move a disc from start position to end position' do 
          new_tower = TowersOfHanoi.new 
          expect(new_tower.move(1,2)).to eq([1])
          expect(new_tower.move(1,2)).to eq([1,2])
          expect(new_tower.move(2,3)).to eq([2])
        end
    end

    describe '#won?' do 
        context 'When the game has won' do
            it 'should return true' do 
                towers.move(1,2)
                towers.move(1,3)
                towers.move(2,3)
                towers.move(1,2)
                towers.move(3,1)
                towers.move(3,2)
                towers.move(1,2)
                towers.move(1,3)
                towers.move(2,3)
                towers.move(2,1)
                towers.move(3,1)
                towers.move(2,3)
                towers.move(1,2)
                towers.move(1,3)
                towers.move(2,3)
                expect(towers.won?).to eq(true)
            end

        context 'When the game is not over' do
            it 'should return false' do
                expect(towers.won?).to eq(false)
            end
        end
      end
    end
end


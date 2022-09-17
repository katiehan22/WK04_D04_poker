require 'deck'

describe Deck do 
    let(:deck) {Deck.new}
    describe '#initialize' do
        it 'should set deck' do 
          expect(deck.instance_variable_get(:@deck).length).to eq(52)
        end

        it 'should contain cards' do 
          expect(deck.instance_variable_get(:@deck).first.is_a?(Card)).to eq(true)
        end
    end
end
require 'hand'

describe Hand do 
    let(:card1){double("Card", suit: :heart, value: 2)}
    let(:card2){double("Card", suit: :spade, value: 2)}
    let(:card3){double("Card", suit: :clubs, value: 2)}
    let(:card4){double("Card", suit: :clubs, value: 7)}
    let(:card5){double("Card", suit: :heart, value: 13)}
    let(:hand){Hand.new([card1,card2,card3,card4,card5])} 

    describe '#initialize' do
        it 'should set hand' do 
            expect(hand.instance_variable_get(:@hand_arr).length).to eq(5)
        end
    end
end
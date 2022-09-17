require 'card'
require 'rspec'

describe Card do
    let(:card){Card.new(:spade, 13)}
    describe '#initialize' do 
        it 'should set suit' do
            expect(card.instance_variable_get(:@suit)).to eq(:spade)
        end

        it 'should set value' do
            expect(card.instance_variable_get(:@value)).to eq(13)
        end
    end
end
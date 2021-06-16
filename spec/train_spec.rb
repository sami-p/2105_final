require './lib/car'
require './lib/train'

RSpec.describe Train do
  before :all do
    @train1 = Train.new({name: 'Thomas', type: 'Tank'})
    @car1 = Car.new({type: 'Mail', weight: 5})
    @car2 = Car.new({type: 'Passengers', weight: 1})
  end
  describe 'instantiation' do
    it 'exists' do
      expect(@train1).to be_an_instance_of(Train)
    end

    it 'has attributes' do
      expect(@train1.name).to eq('Thomas')
      expect(@train1.type).to eq('Tank')
    end

    it 'begins with an empty cargo hash' do
      expect(@train1.cargo).to eq({})
    end
  end
end

require './lib/car'

RSpec.describe Car do
  before :all do
    @car1 = Car.new({type: 'Mail', weight: 5})
    @car2 = Car.new({type: 'Passengers', weight: 1})
  end
  describe 'instantiation' do
    it 'exists' do
      expect(@car1).to be_an_instance_of(Car)
    end

    it 'has attributes' do
      expect(@car1.type).to eq('Mail')
      expect(@car1.weight).to eq(5)
    end

    it 'can create another instance of Car' do
      expect(@car2).to be_an_instance_of(Car)
    end
  end
end

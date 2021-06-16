require './lib/car'

RSpec.describe Car do
  before :all do
    @car1 = Car.new({type: 'Mail', weight: 5})
  end
  describe 'instantiation' do
    it 'exists' do
      expect(@car1).to be_an_instance_of(Car)
    end

    it 'has attributes' do
      expect(@car1.type).to eq('Mail')
      expect(@car1.weight).to eq(5)
    end
  end
end

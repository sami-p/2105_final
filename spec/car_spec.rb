require './lib/car'

RSpec.describe Car do
  before :all do
    @car1 = Car.new({type: 'Mail', weight: 5})
  end
  describe 'instantiation' do
    it 'exists' do
      expect(@car1).to be_an_instance_of(Car)
    end
  end
end

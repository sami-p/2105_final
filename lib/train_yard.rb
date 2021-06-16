class TrainYard
  attr_reader :location
  
  def initialize(train_yard_info)
    @location = train_yard_info[:location]
  end
end

class TrainYard
  attr_reader :location,
              :trains

  def initialize(train_yard_info)
    @location = train_yard_info[:location]
    @trains = []
  end

  def add_train(train)
    @trains << train
  end

  def types_of_trains
    @trains.map do |train|
      train.type
    end.uniq.sort
  end
end

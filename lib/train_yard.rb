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

  def trains_containing(car)
    @trains.find_all do |train|
      train.cargo.include?(car)
    end
  end

  def sorted_cargo_list
    types = []
    @trains.each do |train|
      train.cargo.each do |car, quantity|
        types << car.type
      end
    end
    types.uniq.sort
  end

  def total_inventory
    hash = Hash.new(0)
    @trains.each do |train|
      train.cargo.each do |car, quantity|
        hash[car] += quantity
      end
    end
    hash
  end
end

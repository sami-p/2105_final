class Train
  attr_reader :name,
              :type
              
  def initialize(train_info)
    @name = train_info[:name]
    @type = train_info[:type]
  end
end

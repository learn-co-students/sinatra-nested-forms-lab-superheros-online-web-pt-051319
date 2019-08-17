class Hero

  attr_reader :name, :power, :bio

  # belongs_to :team

  @@heros = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    @@heros << self
  end

  def self.all
    @@heros
  end


end

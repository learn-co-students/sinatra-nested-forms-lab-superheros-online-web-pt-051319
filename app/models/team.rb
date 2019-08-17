class Team

  attr_reader :name, :motto
  @@teams = []

  # has_many :heros

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    @@teams << self
  end

  def self.all
    @@teams
  end

end

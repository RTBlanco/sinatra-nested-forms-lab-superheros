class Hero
  attr_accessor :name, :power, :bio, :team

  @@heros= []
  def initialize(arg, team)
    @name = arg[:name]
    @power = arg[:power]
    @bio = arg[:bio]
    @team = team
  end

  def self.all 
    @@heros
  end

end
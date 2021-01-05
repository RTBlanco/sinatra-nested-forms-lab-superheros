class Team
  attr_accessor :name, :motto, :members

  def initialize(arg)
    @name = arg[:name]
    @motto = arg[:motto]
    @members = []
    # binding.pry
    
    arg[:members].each {|hero| self.add_member(Hero.new(hero, self.name))}
  end

  def add_member(hero)
    @members << hero 
  end

  def find_memeber(name)
    Hero.all.find {|hero| hero.team == self && hero.name == name }
  end

end

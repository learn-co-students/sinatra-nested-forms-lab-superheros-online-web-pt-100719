class SuperHero
  attr_reader :name, :power, :bio
  SUPERHEROS = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    SUPERHEROS << self
  end

 
  def self.all
    SUPERHEROS
  end
end
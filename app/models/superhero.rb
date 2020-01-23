class SuperHero
    attr_accessor :name, :power, :biography
    
    @@all = []

    def initialize(attrs)
        attrs.each {|key, value| self.send(("#{key}="), value)}
        @@all << self
        binding.pry
    end

    def self.all
        @@all
    end
end
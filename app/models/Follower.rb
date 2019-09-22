class Follower

    attr_accessor :name, :age, :life_motto
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def oaths_made
        BloodOath.all.select {|oath| oath.follower == self}.uniq
    end

    def cults
        self.oaths_made.map {|oath| oath.cult}.uniq
    end

    def join_cult(cult)
        cult.recruit_follower(self)
    end

    def self.of_a_certain_age(age)
        self.all.select {|follower| follower.age >= age}
    end
    
    def my_cults_mottos
      self.cults.map do |cult|
          cult.motto 
      end
    end
    
end

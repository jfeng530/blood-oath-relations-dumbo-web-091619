require 'date'
require 'pry'
class Cult

    attr_accessor :name, :location, :founding_year, :slogan
    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(person)
        BloodOath.new(self, person, Date.today.to_s)
    end

    def cult_population
        self.oaths.count
    end

    def oaths
        BloodOath.all.select {|oath| oath.cult == self}.uniq
    end

    def members
        self.oaths.map {|oath| oath.follower}.uniq
    end

    def self.find_by_name(name)
        Cult.all.find {|cult| cult.name == name}
    end

    def self.find_by_location(location)
        Cult.all.select {|cult| cult.location == location}
    end

    def self.find_by_founding_year(year)
        Cult.all.select {|cult| cult.founding_year == year}
    end

    def average_age
        total_age = 0
        self.members.each do |member|
            total_age += member.age 
        end
        total_age/self.members.count
    end

    def my_followers_mottos
        self.members.map do |member|
            member.life_motto
        end
    end

    def self.least_popular
        pop = 99
        bad_cult = nil
        Cult.all.each do |cult|
          if cult.cult_population < pop 
            pop = cult.members
            bad_cult = cult 
            binding.pry
          end
        end
    end


end

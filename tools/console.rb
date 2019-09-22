require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

lorde = Cult.new("Cult Lorde", "NY", 1990, "Be Royal")
jagger = Cult.new("Stones Cult", "LA", 1980, "Something with a stone")
bowie = Cult.new("Cult of Oddity", "Space", 1970, "Where you at, Tom")

steve = Follower.new("Steve", 25, "Sup Im steve")
anton = Follower.new("Anton", 21, "anton is here")
jill = Follower.new("Jill", 33, "Hey yall")

oath1 = jill.join_cult(lorde)
oath2 = steve.join_cult(jagger)
oath3 = anton.join_cult(bowie)
oath4 = anton.join_cult(lorde)
oath5 = jill.join_cult(bowie)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

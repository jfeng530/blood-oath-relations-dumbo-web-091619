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
nicks = Cult.new("Fleetwood", "LA", 1994, "Rhiannon")

steve = Follower.new("Steve", 25, "Sup Im steve")
anton = Follower.new("Anton", 21, "anton is here")
jill = Follower.new("Jill", 33, "Hey yall")
abe = Follower.new("Abe", 43, "Hey yall")
ben = Follower.new("Ben", 33, "Hey yall")
cary = Follower.new("Cary", 13, "Hey yall")
dave = Follower.new("Dave", 43, "Hey yall")
enes = Follower.new("Enes", 25, "Hey yall")
frank = Follower.new("Frank", 38, "Hey yall")
geoff = Follower.new("Geoff", 63, "Hey yall")
henry = Follower.new("Henry", 53, "Hey yall")

j_lorde = jill.join_cult(lorde)
s_jagger = steve.join_cult(jagger)
a_bowie = anton.join_cult(bowie)
a_lorde = anton.join_cult(lorde)
j_bowie = jill.join_cult(bowie)
j_nicks = jill.join_cult(nicks)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

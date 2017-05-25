###########################
#Simple adventure program#
##########################

#functions
def create_room
  "You are in a room.. There is an exit on the wall."
end
def roll_dice(number_of_dice, size_of_dice)
  total = 0
  1.upto(number_of_dice) do
    total = total + rand(size_of_dice) + 1
  end
  return total
end
def has_escaped?
  if roll_dice(2, 6) >= 11
    true
  else
    false
  end
end
def has_monster?
  if roll_dice(2, 6) >= 8
    true
  else
    false
  end
end
def monster_attack?
  if roll_dice(2, 6) >= 9
    true
  else
    false
  end
end

puts "You are trapped in the dungeon. Collect treasure and try to escape"
puts "before a monster gets you!"
puts "To play the game, press a command key each turn"

number_of_rooms_explored = 1
treasure_count = 0
damage_points = 5
escaped = false
monster = false
current_room = ""

actions = ["m - move","s - search"]
while damage_points > 0 and escaped == false do
  print = "What would you like to do #{actions.join(', ')}): "
  player_action = gets.chomp
  puts "Room number #{number_of_rooms_explored}"
  puts number_of_rooms_explored
end

#Actions
if player_action == "m"
  current_room = create_room
  number_of_rooms_explored = number_of_rooms_explored + 1
  monster = has_monster?
  escaped = has_escaped?
  puts current_room
elsif player_action == "s"
  if has_treasure?
    puts "You found #{treasure_count}!"
    treasure_count = treasure_count + 1
  else
    puts "You look, however you do not find anything"
end
elsif player_action == "f"
  if defeat_monster?
    monster = false
    puts "You have defeated the monster!"
  else
    puts "You attack, but miss!"
end
else
  puts "Unrecognised command, please try again"
end
puts ""

#Monster encounter
if monster
  puts "Oh dear! A monster is in the room with you!"
  actions << "f = fight"
end
if not monster
  monster = has_monster?
end

if monster and monster_attack?
  damage_points = damage_points - 1
  puts "Ow! The monster hit you!"
end

#end of game code
if damage_points > 0
  puts "You escaped!"
  puts "You explored #{number_of_rooms_explored} rooms"
  puts "and found #{treasure_count} pieces of treasure"
else
  puts "You did not make it out alive"
  puts "You explored #{number_of_rooms_explored} rooms"
  puts "before meeting your doom."
end

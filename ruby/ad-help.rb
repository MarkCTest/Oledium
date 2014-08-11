###########################################################################################
#    The file set for Oledium was written by Mark Crowther (aka MarkCTest, Cyreath)       #
#    You may share, copy, adapt it so long as you adhere to the ShareAlike license        #
#    http://creativecommons.org/licenses/by-sa/3.0/                                       #
###########################################################################################

# This file contains HELP text for the player to call on if required OR for the game to use

def helping_hand
  puts "\n\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "To see a list of available commands type Help or h"
  puts "To check your inventory of currently equipped items, type Inventory or i"
  puts "To see what's in your back-pack, type Backpack of b"
  puts "Learn about character statistics (Hit Point, Strength, etc) by typing stats"
  puts "You have a player sheet called #{@hero_name.downcase}_character_sheet.txt"

  health_advice
end

def help
  puts "\nHere's a list of commands:\n\n"
  
  puts "Quit or q\tLeave the game"  
  puts "Help or h\tOpens this Help file"
  puts "\n------ Actions -----"
  puts "Attack or a \tAttack the current Mob or NPC"
  puts "Flee or f \tRun away from a Mob or NPC you have encountered or are attacking"
  puts "Search or s \tSearch the game world or the corpse of a dead Mob or NPC"
  puts "Rest or r\tAllows you to rest and regain some HP"
  puts "Equip\t\tEquips the item chosen. If the slot is in use then items are swapped. Must be in your backpack."
  puts "Unequip\t\tUn-equips an item and places it into the backpack"
  puts "Use or u\tAllows you to use a Potion or Artefact"
  puts "Pickup \t\tPlaces an item or all items mentioned into the backpack"
  puts "Discard \tThe named item is thrown away"
  puts "\n----- Information -----"
  puts "Character or c\tShows your current character stats"
  puts "Stats\t\tExplains what your attributes mean"
  puts "Inventory or i\tShows you what items you have equipped"
  puts "Backpack or b\tShows you what items are in your backpack"
end

def health_advice
  puts "\n\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "Remember you have #{@player.hero_hp} Hit Points. When you reach 0, you're dead!"
  puts "Be sure to rest or use a potion if you need to recover some HP or other attributes."
end

def about_stats
  puts "\n\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "\nABOUT CHARACTER STATS"
  puts "Hit Points:\tDetermines how much damage you can take in combat (20-25 pts)."
  puts "Strength:\tThis is how much you can carry and how hard you hit your enemies. (10-15 pts)."
  puts "Stamina:\tRepresents your overall fitness for adventure and battle. (10-20 pts)"
  puts "Dexterity:\tHow agile your are, affects how often you hit and get hit. (10-20 pts)"
  puts "Luck:\t\tHelps in finding traps and treasure, affects saving throws. (10-15 pts)"
end
###########################################################################################
#    The file set for Oledium was written by Mark Crowther (aka MarkCTest, Cyreath)       #
#    You may share, copy, adapt it so long as you adhere to the ShareAlike license        #
#    http://creativecommons.org/licenses/by-sa/3.0/                                       #
###########################################################################################

# This is the Method library for the game

# --------------------------- GAME DICE ------------------------------------------

# 8 sided dice
def dice_8
  dice_8_value = rand(8)
end

#12 sided dice
def dice_12
  dice_12_value = rand(12)
end

# --------------------------- PLAYER ACTIONS -----------------------------------
def character_status
  puts "You have the following stats right now:\n"
  puts "HP: #{@player.hero_hp}"
  puts "Str: #{@player.hero_str}"
  puts "Sta: #{@player.hero_sta}"
  puts "Dex: #{@player.hero_dex}"
  puts "Luc: #{@player.hero_luc}" 
  puts "Type i for Inventory or b for Backpack"
end

# ----------------------------------------------------------------------------------------

def choose_mob_to_fight
  
  puts "\nWhat would you like to attack? (Golem, Kobold, Dryad, Skeleton, Rat)"
  @foe = gets.chomp.downcase
  @hero_foe = nil
  
   case @foe
      when "golem"
        @hero_foe = @golem
        if @hero_foe.mob_alive? then golem_pic end
      when "kobold"
        @hero_foe = @kobold
        if @hero_foe.mob_alive? then kobold_pic end
      when "dryad"
        @hero_foe = @dryad
        if @hero_foe.mob_alive? then dryad_pic end
      when "skeleton"
        @hero_foe = @skeleton
        if @hero_foe.mob_alive? then skeleton_pic end
      when "rat"
        @hero_foe = @rat
        if @hero_foe.mob_alive? then rat_pic end
          
      else
        puts "A what? Select a creature from the list."
        choose_mob_to_fight
    end #case
    
end #def

# -----------------------------------------------------------------------------------------

def attack

choose_mob_to_fight #(ad-method-lib)
    
    if @hero_foe.mob_dead? #(ad-class-lib > Class Mob)
      puts "\nThe #{@foe} is already dead #{@hero_name}, forgetting your battles?"
            
      else @hero_foe.mob_alive? #(ad-class-lib > Class Mob)
        combat_action = nil
        while @hero_foe.mob_alive? && combat_action != "flee"
          puts "\nThe #{@foe} has #{@hero_foe.mob_hp} hit points and you have #{@player.hero_hp}\n\n"
          puts "You confront the #{@foe}, sword drawn. What now? (Attack, Flee)"
          combat_action = gets.chomp.downcase
                  
            if ["flee", "f"].include? combat_action
              flee #(ad-method-lib)
          
            elsif ["attack","a"].include? combat_action
                puts "\n.....you attack\n"
                puts "__________________________________________________________"               
                hero_attack_value = @player.hero_str - dice_12 #(ad-method-lib)
                @hero_foe.mob_hp -= hero_attack_value
            
            #elsif puts "What? Do you want to attack or flee?"
            
                if @hero_foe.mob_dead? #(ad-class-lib > Class Mob)
                  puts "You attack for #{hero_attack_value} points of damage!"
                  @hero_foe.mob_hp = 0                 
                  puts "\nThe #{@foe} is dead! It now has #{@hero_foe.mob_hp} HP."
                  
                  else 
                  puts "You attack for #{hero_attack_value} points of damage!"  
                  puts "__________________________________________________________" 
                end           
            
            end
        end
    end

end

# ------------------------------------------------------------------------------------

def flee
  #flee_damage
    @flee_penalty = dice_8 #(ad-method-lib)
    @player.hero_hp -= (@flee_penalty)
    puts "As you turn and run the #{@foe} strikes out at you!\n You suffer #{@flee_penalty} points of damage, you have #{@player.hero_hp} remaining."
end

# ------------------------------------------------------------------------------------

def search
  puts "Yet to be implemented"
  # Search for something or search something
    ## if searching a mob, mob must be dead
        # call a random item function, pulling from a loot array?
    ## if searching generally then roll to see 
      ## if nothing is found
        ## elsif something is found
          ## else a mob is attracted to the searching noises
               ## call a mob_attacks function
end

# ------------------------------------------------------------------------------------

def rest
  puts "Yet to be implemented"
  # Rest to regain HP
    ## rest for whole seconds
      ##regain 2 HP per second
        ## while resting auto roll to see if they are encountered by a wandering mob
          ## mob should be weaker (lower HP) than the player
              ## call a mob_attacks function
end

# ------------------------------------------------------------------------------------

def equip_or_unequip #partial implementation, need to search over the backpack and decide which slot the item should be equipped to
  puts "Equip what? (Cap)"
  equip_item = gets.chomp.capitalize # also need to implement Un-Equip!!
  
  if @hero_backpack_1.sl_1 == equip_item # need to check ALL backpack slots !!
    then
      @hero_equipped.sl_head = equip_item
      @hero_backpack_1.sl_1 = "-"
    else
      puts "You don't have '#{equip_item}' in your backpack."
  end
    
end

# ------------------------------------------------------------------------------------

def use
  puts "Yet to be implemented"
  # Use a Potion or Artifact
end

# ------------------------------------------------------------------------------------

def pickup_or_discard
  puts "Yet to be implemented"
  # pick up items that are found by searching the game world or a corpse
end

# ------------------------------------------------------------------------------------

def game_death
  puts "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "Darkness swirls around you, your senses fade. Your adventure ends here."
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"
end

# ------------------------------------------------------------------------------------

def game_quit
  puts "\nThanks for playing #{@hero_name}."
  # Update the character_sheet with the latest Stats, Equipment and Items
  exit(goodbye=0)
end

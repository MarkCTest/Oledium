###########################################################################################
#    The file set for Oledium was written by Mark Crowther (aka MarkCTest, Cyreath)       #
#    You may share, copy, adapt it so long as you adhere to the ShareAlike license        #
#    http://creativecommons.org/licenses/by-sa/3.0/                                       #
###########################################################################################

# This is the main control file for the game

#---------------------------------------------------------------------------
#LOAD THE GAME FILES

# pull in files we've written
require_relative 'ad-help'              # Main Help file
require_relative 'ad-background'        # Background and Narratives
require_relative 'ad-hero-generator'    # Makes our character
require_relative 'ad-class-lib'         # Main Class file
require_relative 'ad-world-inventory'   # Inventory of all items in the world
require_relative 'ad-method-lib'        # Collection of methods used during the game
require_relative 'ad-ascii-art'         # ASCII art images

# pull in REXML for creating the XML character sheet
#require "rexml/document"


#---------------------------------------------------------------------------
# GETTING STARTED

start_splash                # (ad-background) Starting screen
hero_generation             # (ad-hero-generator) Get Hero name and generate stats

if
  @returning_player_status == 0 # tested for in (ad-hero-generator)
  then
    character_sheet_generation  # (ad-hero-generator) Create the Character Sheet to capture Hero details for the user to read
    game_start_narrative        # (ad-background) Shows the game background to the new player
    helping_hand                # (ad-help) Provides guidance on game commands
end

#---------------------------------------------------------------------------
#  PLAYING THE ADVENTURE
while @player.hero_alive?
  
  puts "\nWhat now? (Type 'help' for a list of commands)\n"
  action = gets.chomp.downcase
  
  # CASE statement to decide what happens given the player's choice of action
  case action
    when "quit", "q"
      game_quit #(ad-method-lib)
    when "help", "h"
      help #(ad-method-lib)
  # ~~~~~~~~~~~~~~~~~~~~ Information ~~~~~~~~~~~~~~~~~~~~~~ 
    when "stats"
      about_stats #(ad_help)
    when "character", "c"
      character_status #(ad-method-lib)     
    when "inventory", "i"
      hero_current_inventory #(ad-hero-generator)
    when "backpack", "b"
      hero_current_backpack #(ad-hero-generator)
  # ~~~~~~~~~~~~~~~~~~~~ Player Actions ~~~~~~~~~~~~~~~~~~~~
    when "attack", "a"
      attack #(ad-method-lib)     
    when "flee", "f"
      flee #(ad-method-lib)       
    when "search", "s"
      search #(ad-method-lib) 
    when "rest", "r"
      rest #(ad-method-lib)
    when "equip", "unequip"
      equip_or_unequip #(ad-method-lib)
    when "use", "u"
      use #(ad-method-lib)
    when "pickup", "discard"
      pickup_or_discard #(ad-method-lib)

  # ~~~~~~~~~~~~~~~~ TEST ITEMS ~~~~~~~~~~~~~~~~~~~
    when "god mode"
      @player.hero_hp = 10000
      @player.hero_str = 10000
      puts "\nYou have #{@player.hero_hp} HP and #{@player.hero_str} STR now."
    when "kill"
      @player.hero_hp = 0
      
    else
        puts "That's not a known command"
  end

end

game_death #(ad-method-lib)
puts "You have #{@player.hero_hp} HP and #{@player.hero_str} STR now."



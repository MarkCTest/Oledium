###########################################################################################
#    The file set for Oledium was written by Mark Crowther (aka MarkCTest, Cyreath)       #
#    You may share, copy, adapt it so long as you adhere to the ShareAlike license        #
#    http://creativecommons.org/licenses/by-sa/3.0/                                       #
###########################################################################################

# This file is for checking and generating details of the Hero

#--------------------- Generate the Hero Character sheet -------------------

def hero_generation
  
 @returning_player_status = 0
 
  puts "\n ......................................"
  puts " : Before we begin let's get your Hero! :"
  puts " ........................................"
  
  print "\nWhat's your Hero called? : "
  @hero_name = gets.chomp.capitalize

  if File.file?("#{@hero_name}_character_sheet.txt") # Look for a character sheet from a previous game
    then
      @returning_player_status = 1 #ad-index needs this to know if we want intro text showing or not
     #------------- test lines ------------------- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      puts "\nFound Character Sheet\n"                              #  TEST LINE    !!!!!!!!
      puts "returning_player_status = #{@returning_player_status}"  #  TEST LINE    !!!!!!!!
     #------------- test lines -------------------  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!   
     
    # character_file_to_read = File.open("#{@hero_name}_character_sheet.txt","r")  # Read in the data from the Character Sheet
     
    # Assign character ATTRIBUTES to the variables we'll use in our Hero Class in a second (long but safe way of doing this...)
        @hero_hp = 10  #data from file
        @hero_str = 20 #data from file
        @hero_sta = 30 #data from file
        @hero_dex = 40 #data from file
        @hero_luc = 50 #data from file
        
    # Assing the above variables to the elements of a Hero class
        @player = Hero.new(@hero_name, @hero_hp, @hero_str, @hero_sta, @hero_dex, @hero_luc)

    # Return Equipped and Backpack items to the Hero
        @hero_equipped = Hero_inventory.new("-", "Cloth Shirt", "Overcoat", "-", "-", "-", "Dagger", "Leather Belt", "Cloth Trousers", "Leather Boots")
        @hero_backpack_1 = Backpack.new("Cap", "-", "-", "-", "-", "-", "-", "-")
      
    # character_file_to_read.close  #  Close the file after we've read in the needed data
      
    else
      
      # Generate a new Hero
        puts "\nOK #{@hero_name}, now let's see where you're at...\n"
        puts "returning_player_status = #{@returning_player_status}"
              
          sleep 1 # dramatic pause
        
        puts "\nYour Attributes...\n\n" 
        # Generate and print the starting Attributes
        puts " Hit Points:\t #{@hero_hp = 20 + rand(5)}\n"
        puts " Strength:\t #{@hero_str = 10 + rand(5)}\n"
        puts " Stamina:\t #{@hero_sta = 10 + rand(10)}\n"
        puts " Dexterity:\t #{@hero_dex = 10 + rand(10)}\n"
        puts " Luck:\t\t #{@hero_luc = 10 + rand(5)}\n\n"
        
        #Give the hero thier starting Attributes, Equipped Items and Backpack
        @player = Hero.new(@hero_name, @hero_hp, @hero_str, @hero_sta, @hero_dex, @hero_luc)
        @hero_equipped = Hero_inventory.new("-", "Cloth Shirt", "Overcoat", "-", "-", "-", "Dagger", "Leather Belt", "Cloth Trousers", "Leather Boots")
        @hero_backpack_1 = Backpack.new("Cap", "-", "-", "-", "-", "-", "-", "-")
          
        hero_current_inventory
        hero_current_backpack
  end # if for character file load or generate
end # def hero_generation

#----------------------------------------------------------

def hero_current_inventory
  puts "Your equipped items...\n\n"
  puts(" Head:\t\t#{@hero_equipped.sl_head}\n Chest:\t\t#{@hero_equipped.sl_chest}\n Back:\t\t#{@hero_equipped.sl_back}\n Arms:\t\t#{@hero_equipped.sl_arms}\n Hands:\t\t#{@hero_equipped.sl_hands}\n Left Weapon:\t#{@hero_equipped.sl_lweapon}\n Right Weapon:\t#{@hero_equipped.sl_rweapon}\n Waist:\t\t#{@hero_equipped.sl_waist}\n Legs:\t\t#{@hero_equipped.sl_legs}\n Feet:\t\t#{@hero_equipped.sl_feet}\n\n") 
end

#----------------------------------------------------------

def hero_current_backpack
  puts "\nYour Backpack...\n\n"
  puts("1: [#{@hero_backpack_1.sl_1}] | 2: [#{@hero_backpack_1.sl_2}] | 3: [#{@hero_backpack_1.sl_3}] | 4: [#{@hero_backpack_1.sl_4}]\n5: [#{@hero_backpack_1.sl_5}] | 6: [#{@hero_backpack_1.sl_6}] | 7: [#{@hero_backpack_1.sl_7}] | 8: [#{@hero_backpack_1.sl_8}]")
end

#----------------------------------------------------------

def character_sheet_generation
  character_sheet = File.open("#{@hero_name.downcase}_character_sheet.txt", "w")

  character_sheet.puts("######################################################################\n")
  character_sheet.puts("###################    OLEDIUM CHARACTER SHEET     ###################\n")
  character_sheet.puts("######################################################################\n\n")

  character_sheet.puts("~~~~~~~~~~~~~~~~~~ THE HERO ~~~~~~~~~~~~~~~~~")
  character_sheet.puts("The name of your hero is #{@hero_name}\n\n")

  character_sheet.puts("~~~~~~~~~~~~~~~~~ ATTRIBUTES ~~~~~~~~~~~~~~~~")
  character_sheet.puts(" Hit Points:\t #{@player.hero_hp}\n Strength:\t\t #{@hero_str}\n Stamina:\t\t #{@hero_sta}\n Dexterity:\t\t #{@hero_dex}\n Luck:\t\t\t #{@hero_luc}\n\n")
  
  character_sheet.puts("~~~~~~~~~~~~~~~~~ INVENTORY ~~~~~~~~~~~~~~~~~")
  character_sheet.puts(" Head:\t\t\t#{@hero_equipped.sl_head}\n Chest:\t\t\t#{@hero_equipped.sl_chest}\n Back:\t\t\t#{@hero_equipped.sl_back}\n Arms:\t\t\t#{@hero_equipped.sl_arms}\n Hands:\t\t\t#{@hero_equipped.sl_hands}\n Weapon (L):\t#{@hero_equipped.sl_lweapon}\n Weapon (R):\t#{@hero_equipped.sl_rweapon}\n Waist:\t\t\t#{@hero_equipped.sl_waist}\n Legs:\t\t\t#{@hero_equipped.sl_legs}\n Feet:\t\t\t#{@hero_equipped.sl_feet}\n\n")
  
  character_sheet.puts("~~~~~~~~~~~~~~~~ BACK PACK 1 ~~~~~~~~~~~~~~~~")
  character_sheet.puts("1: [#{@hero_backpack_1.sl_1}] | 2: [#{@hero_backpack_1.sl_2}] | 3: [#{@hero_backpack_1.sl_3}] | 4: [#{@hero_backpack_1.sl_4}] | 5: [#{@hero_backpack_1.sl_5}] | 6: [#{@hero_backpack_1.sl_6}] | 7: [#{@hero_backpack_1.sl_7}] | 8: [#{@hero_backpack_1.sl_8}]") 
  
  character_sheet.close
  
  puts "\n\n(A Character Sheet has been generated for your hero.)\n\n"
end
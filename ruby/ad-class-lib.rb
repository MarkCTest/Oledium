###########################################################################################
#    The file set for Oledium was written by Mark Crowther (aka MarkCTest, Cyreath)       #
#    You may share, copy, adapt it so long as you adhere to the ShareAlike license        #
#    http://creativecommons.org/licenses/by-sa/3.0/                                       #
###########################################################################################

# All Classes for the game are contained in this file

# Classes for the CHARACTERS in the game

class Hero
  # This class contains the details of the Player Character
  attr_accessor :hero_name, :hero_hp, :hero_str, :hero_sta, :hero_dex, :hero_luc
  
  def initialize(hero_name, hero_hp, hero_str, hero_sta, hero_dex, hero_luc)
    @hero_name = hero_name
    @hero_hp = hero_hp
    @hero_str = hero_str
    @hero_sta = hero_sta
    @hero_dex = hero_dex
    @hero_luc = hero_luc
  end
  
  def hero_alive?
    #Is the player ALIVE
    @hero_hp >= 1
  end

  def hero_dead?
    #Is the player DEAD
    @hero_hp <= 0
  end
  
end

# ----------------------------------------------------

class Npc
  # This class contains the details of the Non Player Characters
  attr_accessor :npc_name, :npc_hp, :npc_str, :npc_sta, :npc_dex, :npc_luc
  
  def initialize(npc_name, npc_hp, npc_str, npc_sta, npc_dex, npc_luc)
    @npc_name = npc_name
    @npc_hp = npc_hp
    @npc_str = npc_str
    @npc_sta = npc_sta
    @npc_dex = npc_dex
    @npc_luc = npc_luc
  end
  
  def npc_alive?
    #Is the NPC still alive
    @npc_hp > 0
  end
end

# ----------------------------------------------------

class Mob
  # This class contains details of the Monster
  attr_accessor :mob_name, :mob_hp, :mob_str, :mob_sta, :mob_dex, :mob_luc

  def initialize(mob_name, mob_hp, mob_str, mob_sta, mob_dex, mob_luc)
    @mob_name = mob_name
    @mob_hp = mob_hp
    @mob_str = mob_str
    @mob_sta = mob_sta
    @mob_dex = mob_dex
    @mob_luc = mob_luc
  end

  def mob_alive?
    #Is the mob still alive?
    @mob_hp >= 1
  end
  
  def mob_dead?
    #Is this instance of the mob now dead?
    @mob_hp <= 0
  end
  
end

# ----------------------------------------------------

# Classes for the  ITEMS in the game
class Artifact
  # This class contains details of special artifacts and treasures
  attr_accessor :art_name, :art_mag_effect, :art_charge 
  
  def initialize(art_name, art_mag_effect, art_charge)
    @art_name = art_name #its name
    @art_mag_effect = art_mag_effect #what magical effect does it have
    @art_charge = art_charge #how many times can the artifact be used?
  end

  def charged?
    # Is an artifact or weapon exhausted of magical power?
    @art_charge > 0
  end

end

# ----------------------------------------------------

class Potion
  # This class contains details of potions the player may have
  attr_accessor :pot_name, :pot_mag_effect, :pot_uses
  
  def initialize(pot_name, pot_mag_effect, pot_uses)
    @pot_name = pot_name #its name
    @pot_mag_effect = pot_mag_effect #what does it do?
    @pot_uses = pot_uses #how many times can the potion be used?
  end

  def usable?
    # Is a potion used up?
    @pot_uses > 0
  end

end

# ----------------------------------------------------

class Weapon
  # This class contains details of weapons the player may have
  attr_accessor :weapon_name, :weapon_dam, :weapon_dur, :weapon_mag_effect, :weapon_slot
  
  def initialize(weapon_name, weapon_dam, weapon_dur, weapon_mag_effect, weapon_slot)
    @weapon_name = weapon_name
    @weapon_dam = weapon_dam
    @weapon_dur = weapon_dur
    @weapon_mag_effect = weapon_mag_effect
    @weapon_slot = weapon_slot
  end

  def repaired?
    # Is a weapon at zero durability
    @weapon_dur > 0
  end

end

# ----------------------------------------------------

class Armour
  # This class contains details of ARMOUR the player may have
  attr_accessor :armour_name, :armour_prot, :armour_dur, :armour_mag_effect, :armour_slot
  
  def initialize(armour_name, armour_prot, armour_dur, armour_mag_effect, armour_slot)
    @armour_name  = armour_name
    @armour_prot  = armour_prot
    @armour_dur = armour_dur
    @armour_mag = armour_mag_effect
    @armour_slot  = armour_slot
  end
  
  def maintained?
    # Is the armour at zero durability, i.e. broken
    @armour_dur > 0
  end 
  
end

# ----------------------------------------------------

class Clothing
  # This class contains details of CLOTHING the player may have
  attr_accessor :clothing_name, :clothing_prot, :clothing_dur, :clothing_mag_effect, :clothing_slot
  
  def initialize(clothing_name, clothing_prot, clothing_dur, clothing_mag_effect, clothing_slot)
    @clothing_name  = clothing_name
    @clothing_prot  = clothing_prot
    @clothing_dur = clothing_dur
    @clothing_mag = clothing_mag_effect
    @clothing_slot  = clothing_slot
  end
  
  def maintained?
    # Is the armour at zero durability
    @clothing_dur > 0
  end 
  
end

# ----------------------------------------------------

# Classes for INVENTORY of the characters
class Hero_inventory #sl == Slot
  attr_accessor :sl_head, :sl_chest, :sl_back, :sl_arms, :sl_hands, :sl_lweapon, :sl_rweapon, :sl_waist, :sl_legs, :sl_feet

  def initialize(sl_head, sl_chest, sl_back, sl_arms, sl_hands, sl_lweapon, sl_rweapon, sl_waist, sl_legs, sl_feet)
    @sl_head    = sl_head
    @sl_chest   = sl_chest
    @sl_back    = sl_back
    @sl_arms    = sl_arms
    @sl_hands   = sl_hands
    @sl_lweapon = sl_lweapon
    @sl_rweapon = sl_rweapon
    @sl_waist   = sl_waist
    @sl_legs    = sl_legs
    @sl_feet    = sl_feet
  end
end

# ----------------------------------------------------

class Backpack  # sl == Slot
  attr_accessor :sl_1, :sl_2, :sl_3, :sl_4, :sl_5, :sl_6, :sl_7, :sl_8
  
  def initialize(sl_1, sl_2, sl_3, sl_4, sl_5, sl_6, sl_7, sl_8)
    @sl_1 = sl_1
    @sl_2 = sl_2
    @sl_3 = sl_3
    @sl_4 = sl_4
    @sl_5 = sl_5
    @sl_6 = sl_6
    @sl_7 = sl_7
    @sl_8 = sl_8
  end
end

  


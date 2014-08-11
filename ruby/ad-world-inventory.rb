###########################################################################################
#    The file set for Oledium was written by Mark Crowther (aka MarkCTest, Cyreath)       #
#    You may share, copy, adapt it so long as you adhere to the ShareAlike license        #
#    http://creativecommons.org/licenses/by-sa/3.0/                                       #

###########################################################################################

# This file contains all the items and creatures in the game

# MOBS - :mob_name, :mob_hp, :mob_str, :mob_sta, :mob_dex, :mob_luc
@golem = Mob.new("A Golem", 15, 10, 10, 10, 10)
@kobold = Mob.new("A Kobold", 10, 5, 5, 5, 5)
@dryad = Mob.new("A Dryad", 7, 4, 3, 3, 3)
@skeleton = Mob.new("A Skeleton", 5, 3, 3, 2, 2)
@rat = Mob.new("A Rat", 3, 2, 2, 2, 2)

# -----------------------------------------------

# CLOTHING - :clothing_name, :clothing_prot, :clothing_dur, :clothing_mag_effect, :clothing_slot
# ~ Cloth items
@clo_cloth_shirt = Clothing.new("Cloth Shirt", 1, 5, 0, @sl_chest)
@clo_cloth_trousers = []
@clo_cloth_shoes = []
@clo_cloth_gloves = []
@clo_cloth_cap = []
@clo_cloth_belt= []
@clo_cloth_overcoat = []

# ~~ Leather items
@clo_leather_cap = []
@clo_leather_shirt = []
@clo_leather_trousers = []
@clo_leather_shoes = []
@clo_leather_gloves = []
@clo_leather_belt = []
@clo_leather_bracer = []

# -----------------------------------------------

# ARMOUR - :armour_name, :armour_prot, :armour_dur, :armour_mag_effect, :armour_slot
# ~~ Armour Items

arm_copper_bracer = []

# -----------------------------------------------

# WEAPONS - :weapon_name, :weapon_dam, :weapon_dur, :weapon_mag_effect, :weapon_slot
wea_cutlass = []
wea_dagger = []

# -----------------------------------------------

# POTIONS - :pot_name, :pot_mag_effect, :pot_uses
pot_healing = []
pot_hp = []
pot_sta = []
pot_luc = [] #pot luck... see whatI did there? eheheheheh.....

# -----------------------------------------------

# ARTIFACTS - :art_name, :art_mag_effect, :art_charge
art_bell_hammer = []
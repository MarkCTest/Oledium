' OLEDIUM

' ad_hero_generator.vbs

' This file generates the hero and creates / updates the Character Sheet
'-----------------------------------------------------------------------------
Option Explicit

Dim sHeroName

'---------------------------------------------------------------------------------

Function HeroGeneration
	MsgBox "................................................................................" & VbCrLf & VbCrLf  & "   Before we begin, let's generate your Hero!   " & vBCrLf & vBCrLf & "................................................................................",,sMsgBoxTitle
	sHeroName = InputBox ("What's the name of your hero?", sMsgBoxTitle)
	
	Dim oTheHero
	Set oTheHero = New Hero ' ad_class_lib.vbs
	
		oTheHero.HeroName = sHeroName     '<------------------How to make these values Public / Readable by other functions?
		oTheHero.HeroHP = 30
		oTheHero.HeroStr = 30
		oTheHero.HeroLu = 30

	' Test MsgBox to check we generated the Hero OK
	MsgBox "Hero name is " & oTheHero.HeroName & " they have " & oTheHero.HeroHP & " HP, " & oTheHero.HeroStr & " Str and " & oTheHero.HeroLu & " Luck points."
	
	' Generate a new instance of HeroCurrentInventory Class item
	' populate with starting equipment for the user
	' we program code to allow EQUIP and UNEQUIP to work, along with USE
	
	' Generate a new instance of HeroCurrentBackpack Class item
	' Populate it with an extra item so the user can practice EQUIP / UNEQUIP and we can
	' program the control of the use of slots
	
	CharacterSheetGeneration '(ad_hero_generator.vbs)
	HeroCurrentInventory '(ad_hero_generator.vbs)
	HeroCurrentBackPack '(ad_hero_generator.vbs)
	
End Function 'HeroGeneration

'---------------------------------------------------------------------------------
' This Function shows the contents of the HeroInventory Class object
Function HeroCurrentInventory
	MsgBox "Your equipped items..." & VbCrLf & "(Inventory items shown here)",,sMsgBoxTitle
End Function 'HeroCurrentInventory

'---------------------------------------------------------------------------------
'This Function shows the contents of the HeroCurrentBackPack
Function HeroCurrentBackPack
	MsgBox "Your backpack..." & VbCrLf & "(Backpack items shown here)",,sMsgBoxTitle
End Function 'HeroCurrentBackPack

'---------------------------------------------------------------------------------
' This function takes the character generation details and writes it out to a .txt file
Function CharacterSheetGeneration
	Dim oFSO1, oOutputFile, sTextOutput
	
	Set oFSO1 = CreateObject("Scripting.FileSystemObject")
	oOutputFile = "./Character-Sheet.txt"
	
	Set sTextOutput = oFSO1.OpenTextFile(oOutputFile, 2, True)
	WScript.Echo "Writing to the Character Sheet"
	
	sTextOutput.writeline "Adventures in Oledium - Character Sheet"
	sTextOutput.writeline "---------------------------------------"
	sTextOutput.writeline VbCrLf & "Your hero is called: " & oTheHero.HeroName & VbCrLf
	sTextOutput.writeline "---------------------------------------"
	sTextOutput.writeline "Your Hero's Stats" & VbCrLf
	sTextOutput.writeline "Hit Points: " & oTheHero.HeroHP
	sTextOutput.writeline "Strength: " & oTheHero.HeroStr
	sTextOutput.writeline "Luck: " & oTheHero.HeroLu
	sTextOutput.writeline VbCrLf & "---------------------------------------"
	sTextOutput.writeline "Your Currently Equipped Items" & VbCrLf
	sTextOutput.writeline "Head: "
	sTextOutput.writeline "Chest: "
	sTextOutput.writeline "Legs: "
	sTextOutput.writeline "Feet: "
	sTextOutput.writeline "Right Hand: "
	sTextOutput.writeline "Left Hand: "
	sTextOutput.writeline VbCrLf & "---------------------------------------"	
	sTextOutput.writeline "Your Backpack" & VbCrLf
	sTextOutput.writeline "Slot 1: "
	sTextOutput.writeline "Slot 2: "
	sTextOutput.writeline "Slot 3: "
	sTextOutput.writeline "Slot 4: "
	sTextOutput.writeline "Slot 5: "
	sTextOutput.writeline VbCrLf & "---------------------------------------"
	
End Function 'CharacterSheetGeneration

' Call the Functions TEST TEST TEST TEST
' HeroGeneration 

' OLEDIUM

' ad_index.vbs

' This file is the main control file for the game
' It controls the main flow of the game, calling  methods, classes, etc.
'-----------------------------------------------------------------------------
Option Explicit

' Declare all our variables
Dim sPlayerAction, sMsgBoxTitle

sMsgBoxTitle = "Adventures in Oledium"

'-----------------------------------------------------------------------------
'  code for calling in other files here, first thing our script does
Sub Include(gameFile)
   Dim oFSO : Set oFSO = CreateObject("Scripting.FileSystemObject")
   Dim oFile : Set oFile = oFSO.OpenTextFile(gameFile, 1)

   Dim sStr : sStr = oFile.ReadAll
   oFile.Close
   ExecuteGlobal sStr
End Sub

'-----------------------------------------------------------------------------
' Call in all the files for the game

'Include "ad_help.vbs"
'Include "ad_background.vbs"
Include "ad_method_lib.vbs"
Include "ad_hero_generator.vbs"
Include "ad_inventory.vbs"
Include "ad_class_lib.vbs"

'-------------------------------------------------------------------------------

' ### GETTING STARTED ####

'WelcomeMessage		' (ad_methods_lib.vs) Starting message
HeroGeneration		' (ad_hero_generator.vbs) Get Hero name and generate thier stats
'MakeCharacterSheet	' (ad_hero_generator.vbs) Generate the Character Sheet

'-------------------------------------------------------------------------------
' PLAY THE GAME

Do Until iPlayerHp <= 0 OR sPlayerACtion = "quit" OR sPlayerAction ="q"

' Get the player action
sPlayerAction = InputBox(vbCrLf & "Choose your action." & VbCrLf & VbCrLf & "What do you want to do, " & sHeroName & "?", sMsgBoxTitle)

	Select Case sPlayerAction

		'---------- Play the game ----------
		Case "attack", "a"
			PerformAttack 	'(ad_method_lib)
		Case "flee", "f"
			PlayerFlee 		'(ad_method_lib)
		Case "rest", "r"
			PlayerRest 		'(ad_method_lib)
		Case "search", "s"
			PlayerSearch 	'(ad_method_lib)
		Case "use", "u"
			PlayerUse 		'(ad_method_lib)
		Case "equip", "e"
			EquipOrUnequip 	'(ad_method_lib)

		'---------- Information -----------	
		Case "stats"
			AboutTheStats		 '(ad_help)
		Case "inventory", "i"
			HeroCurrentInventory	 '(ad_hero_generator)
		Case "Backpack", "b"
			HeroCurrentBackpack	 '(ad_hero_generator)

		'----------- Extra the Game ----------
		Case "quit", "q"
			QuitGame		 '(ad_method_lib)
		Case "help", "h"
			GameHelp		 '(ad_method_lib)

		'----------- TEST ITEMS  ----------
		Case "godmode"
			iPlayerHp = 100
			iPlayerStr = 100
			MsgBox "You now have " & iPlayerHp & " HP and " & iPlayerStr & " Str points.",,sMsgBoxTitle


		Case "kill"
			iPlayerHp = 0
			MsgBox "You now have " & iPlayerHp & " HP and " & iPlayerStr & " Str points.",,sMsgBoxTitle
			CharacterSheetGeneration

	End Select

Loop

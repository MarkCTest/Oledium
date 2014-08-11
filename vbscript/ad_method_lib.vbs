' OLEDIUM

' ad_method_lib.vbs

' This file is the METHOD library
'-----------------------------------------------------------------------------

Function QuitGame
	MsgBox "Thanks for playing Adventures in Oledium, " & sHeroName & "!",, sMsgBoxTitle
	CharacterSheetGeneration '(ad_hero_generator)
End Function 'QuitGame

'------------------------------------ Information --------------------------------------------

Function GameHelp
	MsgBox "Not yet implemented",, sMsgBoxTitle
End Function 'GameHelp

'----------------------------------- Main Actions ------------------------------------------

Function PerformAttack
	Dim sPlayerFoe	
	sPlayerFoe = InputBox("What would you like to attack?" & VbCrLf & VbCrLf & "(Choose from: Golem, Kobold, Dryad, Rat)", sMsgBoxTitle)

	Select Case sPlayerFoe
		Case "Golem"
			Set sPlayerFoe = New Mob 'Change sPlayerFoe from a String to a Class
			MsgBox "sPlayerFoe set to the Golem Class"
			'Set mob stats from ad_inventory
				sPlayerFoe.MobName = GolemStats(0)
				sPlayerFoe.MobHP = GolemStats(1)
				sPlayerFoe.MobStr = GolemStats(2)
				sPlayerFoe.MobLu = GolemStats(3)
			
		Case "Kobold"
			Set sPlayerFoe = New Mob 'Change sPlayerFoe from a String to a Class
			MsgBox "sPlayerFoe set to the Kobold Class"
			'Set mob stats from ad_inventory
				sPlayerFoe.MobName = KoboldStats(0)
				sPlayerFoe.MobHP = KoboldStats(1)
				sPlayerFoe.MobStr = KoboldStats(2)
				sPlayerFoe.MobLu = KoboldStats(3)
			
		Case "Dryad"
			Set sPlayerFoe = New Mob 'Change sPlayerFoe from a String to a Class
			MsgBox "sPlayerFoe set to the Dryad Class"
			'Set mob stats from ad_inventory
				sPlayerFoe.MobName = DryadStats(0)
				sPlayerFoe.MobHP = DryadStats(1)
				sPlayerFoe.MobStr = DryadStats(2)
				sPlayerFoe.MobLu = DryadStats(3)
			
		Case "Rat"
			Set sPlayerFoe = New Mob 'Change sPlayerFoe from a String to a Class
			MsgBox "sPlayerFoe set to the Rat Class"
			'Set mob stats from ad_inventory
				sPlayerFoe.MobName = RatStats(0)
				sPlayerFoe.MobHP = RatStats(1)
				sPlayerFoe.MobStr = RatStats(2)
				sPlayerFoe.MobLu = RatStats(3)
			
		Case Else
			MsgBox "That wasn't one of the choices.",, sMsgBoxTitle
			PerformAttack
	End Select

'Do Until sPlayerFoe.MobHp <= 0 OR

	MsgBox "Mob name is " & sPlayerFoe.MobName & " it has " & sPlayerFoe.MobHp & " HP, " & sPlayerFoe.MobStr & " Str and " & sPlayerFoe.MobLu & " Luck points." 			
	MsgBox "You killed the " & sPlayerFoe.MobName & "!",, sMsgBoxTitle

'{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{ END DO UNTIL LOOP for fight

	' Outside the Play Loop
	' MsgBox "You appear to be dead, " & sHeroName & "!" & vBCrLf & vBCrLf &  "Better luck next time.",,sMsgBoxTitle

End Function 'PerformAttack


Function PlayerFlee
	MsgBox "Not yet implemented",, sMsgBoxTitle
End Function 'PlayerFlee


Function PlayerRest
	MsgBox "Not yet implemented",, sMsgBoxTitle
End Function 'PlayerRest


Function PlayerSearch
	MsgBox "Not yet implemented",, sMsgBoxTitle
End Function 'PlayerSearch


Function PlayerUse
	MsgBox "Not yet implemented",, sMsgBoxTitle
End Function 'PlayerUse


Function EquipOrUnequip
	MsgBox "Not yet implemented",, sMsgBoxTitle
End Function 'EquipOrUnequip


Function PickUpOrDiscard
	MsgBox "Not yet implemented",, sMsgBoxTitle
End Function 'PickUpOrDiscard

'----------------------------------- System Actions ------------------------------------------

Function Roll1xD8
	MsgBox "Not yet implemented",, sMsgBoxTitle
End Function 'Roll1xD8



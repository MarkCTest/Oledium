' OLEDIUM

' ad_class_lib.vbs

' This file is the CLASS library
'-----------------------------------------------------------------------------
' Define the class that we can instatiate for each of the mobs, with Name, HP, Str, Luc

Class Mob
	Private sMobName, iMobHP, iMobStr, iMobLu

	Private Sub class_initialise
		sMobName = ""
		iMobHP = 0
		iMobStr = 0
		iMobLu = 0
	End Sub

'------- Mob Name ----------
	Public Property Get MobName
		MobName = sMobName
	End Property
	
	Public Property Let MobName(PublicMobName)
		sMobName = PublicMobName
	End Property

'------- Mob HP ----------
	Public Property Get MobHP
		MobHP = iMobHP
	End Property
	
	Public Property Let MobHP(PublicMobHP)
		iMobHP = PublicMobHP
	End Property

'------- Mob STR ----------
	Public Property Get MobStr
		MobStr = iMobStr
	End Property
	
	Public Property Let MobStr(PublicMobStr)
		iMobStr = PublicMobStr
	End Property
	
'------- Mob Lu ----------
	Public Property Get MobLu
		MobLu = iMobLu
	End Property
	
	Public Property Let MobLu(PublicMobLu)
		iMobLu = PublicMobLu
	End Property

End Class 'Mob

'--------------------------------------------------------------------------

Class Hero
	Private sHeroName, iHeroHP, iHeroStr, iHeroLu

	Private Sub class_initialise
		sHeroName = ""
		iHeroHP = 0
		iHeroStr = 0
		iHeroLu = 0
	End Sub

'------- Hero Name ----------
	Public Property Get HeroName
		HeroName = sHeroName
	End Property
	
	Public Property Let HeroName(PublicHeroName)
		sHeroName = PublicHeroName
	End Property

'------- Hero HP ----------
	Public Property Get HeroHP
		HeroHP = iHeroHP
	End Property
	
	Public Property Let HeroHP(PublicHeroHP)
		iHeroHP = PublicHeroHP
	End Property

'------- Hero STR ----------
	Public Property Get HeroStr
		HeroStr = iHeroStr
	End Property
	
	Public Property Let HeroStr(PublicHeroStr)
		iHeroStr = PublicHeroStr
	End Property
	
'------- Hero Luck ----------
	Public Property Get HeroLu
		HeroLu = iHeroLu
	End Property
	
	Public Property Let HeroLu(PublicHeroLu)
		iHeroLu = PublicHeroLu
	End Property

End Class 'Hero
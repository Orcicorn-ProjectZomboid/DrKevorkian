require "Definitions/AttachedWeaponDefinitions"
-- ----------------------------------------------
-- Define Weapon Attachments --------------------
-- ----------------------------------------------
AttachedWeaponDefinitions = AttachedWeaponDefinitions or {};
AttachedWeaponDefinitions.DrItemsInBack = {
	chance = 20,
	weaponLocation = {"Knife in Back"},
	bloodLocations = {"Back"},
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Base.Scalpel",
		"Base.Scissors",
		"Base.LetterOpener",
		"Base.Machete",
	},
}

AttachedWeaponDefinitions.DrItemsInLeg = {
	chance = 20,
	weaponLocation = {"Knife Left Leg"},
	bloodLocations = {"UpperLeg_L"},
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Base.Scalpel",
		"Base.Scissors",
	},
}

AttachedWeaponDefinitions.DrItemsInShoulder = {
	chance = 20,
	weaponLocation = {"Knife Shoulder"},
	bloodLocations = {"UpperArm_L", "Torso_Upper"},
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Base.Scalpel",
		"Base.Scissors",
		"Base.LetterOpener",
	},
}

-- ----------------------------------------------
-- Attach the weapons to Skins ------------------
-- ----------------------------------------------
-- > DrKevorkianGroupMember attachments
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.DrKevorkianGroupMember = {
	chance = 34;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.DrItemsInBack,
		AttachedWeaponDefinitions.DrItemsInLeg,
		AttachedWeaponDefinitions.DrItemsInShoulder,
	},
}

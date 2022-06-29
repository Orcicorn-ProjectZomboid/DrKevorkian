require "Definitions/AttachedWeaponDefinitions"
--[[
	REGUARDING THIS FILE
		Normally this is where you would attach weapons to your zombies
		to add some flavor. Things such as knives in their stomaches, axes
		in their backs, etc.

		HOWEVER, what we're doing here is hiding Loot items on their bodies. 
		Why you might ask? Simple, there's a Multiplayer bug where using the Distributions
		table to attach loot to Custom Outfits (EG: Our doctors) only works when they 
		are manually spawned. If you spawn them regularly in the world or respawn the game
		doesn't give them their proper loot.

		If you're in single player, it works 100% of the time but 0% of the time in multiplayer.

		So this is a hack work around. The "DrDeath Hidden" attachment is defined in
		scripts/DrDeath_Attachments.txt and it rotates and hides items inside the torso of zombies.
		This allows me to "hide" items inside the zombie to ensure they spawn and look like loot
		to the player while in reality they're "weapons" as far as the game engine is concerned.
		
		I will revisit this in the future if they fix the multiplayer outfit bug.
		See "server/Items/DrDeath_Distributions/ Line 14-44" (Works in Single Player)

		Once that bug's fixed, this entire section can either be deleted or converted over
		to attaching scissors, scalpels, etc to the zombie bodies for flavor.
]]--

-- ----------------------------------------------
-- Define Weapon Attachments --------------------
-- ----------------------------------------------
AttachedWeaponDefinitions = AttachedWeaponDefinitions or {};

-- Will be used on KevorkianGroupSpawns
AttachedWeaponDefinitions.DrDeathGroupDrink = {
	chance = 100,
	outfit = {"DrKevorkianGroupMember"},
	weaponLocation = {"DrDeath Hidden"},
	bloodLocations = nil,
	addHoles = false,
	daySurvived = 0,
	weapons = {			-- 1 in 20 (5%) chance it's a pill
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicideDrink",
		"Kevorkian.DrDeathSuicidePill",
	},
}

-- Will be used on DrKevorkian
AttachedWeaponDefinitions.DrDeathPill = {
	chance = 100,
	outfit = {"DrKevorkian"},
	weaponLocation = {"DrDeath Hidden"},
	bloodLocations = nil,
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Kevorkian.DrDeathSuicidePills",
	},
}

-- ----------------------------------------------
-- Attach the "weapons" to Skins ----------------
-- ----------------------------------------------
-- -- > DrKevorkianGroupMember attachments
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.DrKevorkianGroupMember = {
	chance = 100;
	maxitem = 1;
	weapons = {
		AttachedWeaponDefinitions.DrDeathGroupDrink,
	},
}

-- -- > Dr Kevorkian
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.DrKevorkian = {
	chance = 100;
	maxitem = 1;
	weapons = {
		AttachedWeaponDefinitions.DrDeathPill,
	},
}

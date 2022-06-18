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

		So this is a hack work around. The Pills and recipes are invisible when using their "Static"
		definitions. Which is what shows up when you attach weapons. So perfect, we'll attach invisible
		pills and recipes as needed and that way they'll drop on death because the game thinks it's a weapon.

		Will revisit this in the future if they fix the multiplayer outfit but.
		See "server/Items/DrDeath_Distributions/ Line 14-44"

		Once that bug's fixed, this entire section can either be deleted or converted over
		to attaching scissors, scalpels, etc to the zombie bodies for flavor.
]]--

-- ----------------------------------------------
-- Define Weapon Attachments --------------------
-- ----------------------------------------------
AttachedWeaponDefinitions = AttachedWeaponDefinitions or {};
AttachedWeaponDefinitions.DrDeathPills = {
	chance = 10,
	weaponLocation = {"Knife Stomach"},
	bloodLocations = nil,
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Kevorkian.DrDeathSuicidePills",
	},
}

AttachedWeaponDefinitions.DrDeathPillRecipe100 = {
	chance = 100,
	weaponLocation = {"Belt Right"},
	bloodLocations = nil,
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Kevorkian.DrDeathRecipePills",
	},
}

AttachedWeaponDefinitions.DrDeathPills100 = {
	chance = 100,
	weaponLocation = {"Knife Stomach"},
	bloodLocations = nil,
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Kevorkian.DrDeathSuicidePills",
	},
}


-- ----------------------------------------------
-- Attach the weapons to Skins ------------------
-- ----------------------------------------------
-- > DrKevorkianGroupMember attachments
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.DrKevorkianGroupMember = {
	chance = 10;
	maxitem = 1;
	weapons = {
		AttachedWeaponDefinitions.DrDeathPills,
	},
}

-- > Dr Kevorkian
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.DrKevorkian = {
	chance = 100;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.DrDeathPills100,
		AttachedWeaponDefinitions.DrDeathPillRecipe100,
	},
}

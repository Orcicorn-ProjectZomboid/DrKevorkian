require 'NPCs/ZombiesZoneDefinition'

-- ----------------------------------------------
-- DEBUG ----------------------------------------
-- ----------------------------------------------
--table.insert(ZombiesZoneDefinition.Default,{name = "DrKevorkian", chance=100});
--table.insert(ZombiesZoneDefinition.Default,{name = "DrKevorkianGroupMember", chance=100});


-- ----------------------------------------------
-- Dr. Kevorkian Group Members ------------------
-- ----------------------------------------------
-- Zones
table.insert(ZombiesZoneDefinition.Doctor, {name = "DrKevorkianGroupMember", chance=5});
table.insert(ZombiesZoneDefinition.NursingHome, {name = "DrKevorkianGroupMember", chance=10});
-- Rooms
table.insert(ZombiesZoneDefinition.Default, {name = "DrKevorkianGroupMember", chance=5, room="medical"});
table.insert(ZombiesZoneDefinition.Default, {name = "DrKevorkianGroupMember", chance=5, room="medclinic"});
table.insert(ZombiesZoneDefinition.Default, {name = "DrKevorkianGroupMember", chance=2, room="hospitalroom"});
table.insert(ZombiesZoneDefinition.Default, {name = "DrKevorkianGroupMember", chance=2, room="medicalstorage"});
-- Random Mobs
table.insert(ZombiesZoneDefinition.Default, {name = "DrKevorkianGroupMember", chance=1});


-- ----------------------------------------------
-- Dr. Kevorkian --------------------------------
-- ----------------------------------------------
-- Zones
table.insert(ZombiesZoneDefinition.Doctor, {name = "DrKevorkian", chance=1});
table.insert(ZombiesZoneDefinition.NursingHome, {name = "DrKevorkian", chance=10});
-- Rooms
table.insert(ZombiesZoneDefinition.Default, {name = "DrKevorkian", chance=1, room="medical"});
table.insert(ZombiesZoneDefinition.Default, {name = "DrKevorkian", chance=1, room="medclinic"});
table.insert(ZombiesZoneDefinition.Default, {name = "DrKevorkian", chance=5, room="hospitalroom"});

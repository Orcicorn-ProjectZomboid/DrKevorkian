require 'NPCs/ZombiesZoneDefinition'
ZombiesZoneDefinition = ZombiesZoneDefinition or {};

-- Zone Debugger Spawns (See /lua/shared/NPCs/ZombiesZoneDefinition.lua)
DrKevorkianGroup = {
    name = "DrKevorkianGroupMember",
    chance = 8,
};
ZombiesZoneDefinition.Doctor[DrKevorkianGroup] = DrKevorkianGroup;
ZombiesZoneDefinition.Pharmacist[DrKevorkianGroup] = DrKevorkianGroup;

DrKevorkian = {
    name = "DrKevorkian",
    gender = "male",
    chance = 1,
};
ZombiesZoneDefinition.Doctor[DrKevorkian] = DrKevorkian;


-- General Population Spawns
table.insert(ZombiesZoneDefinition.Default, {name="DrKevorkianGroupMember", chance=5});
table.insert(ZombiesZoneDefinition.Default, {name="DrKevorkian", chance=0.1, gender="male"});

-- Kevorkian Group Doctors
table.insert(ZombiesZoneDefinition.Default, {name="DrKevorkianGroupMember", chance=10, room="medical"});
table.insert(ZombiesZoneDefinition.Default, {name="DrKevorkianGroupMember", chance=10, room="medclinic"});
table.insert(ZombiesZoneDefinition.Default, {name="DrKevorkianGroupMember", chance=10, room="hospitalstorage"});
table.insert(ZombiesZoneDefinition.Default, {name="DrKevorkianGroupMember", chance=10, room="hospitalroom"});
table.insert(ZombiesZoneDefinition.Default, {name="DrKevorkianGroupMember", chance=10, room="medicalstorage"});
table.insert(ZombiesZoneDefinition.Default, {name="DrKevorkianGroupMember", chance=10, room="pharmacy"});
table.insert(ZombiesZoneDefinition.Default, {name="DrKevorkianGroupMember", chance=20, room="pharmacystorage"});

-- Dr Kevorkian
table.insert(ZombiesZoneDefinition.Default, {name="DrKevorkian", chance=5, room="medical", gender="male"});
table.insert(ZombiesZoneDefinition.Default, {name="DrKevorkian", chance=5, room="medclinic", gender="male"});
table.insert(ZombiesZoneDefinition.Default, {name="DrKevorkian", chance=2, room="hospitalroom", gender="male"});
table.insert(ZombiesZoneDefinition.Default, {name="DrKevorkian", chance=10, room="medicaloffice", gender="male"});
table.insert(ZombiesZoneDefinition.Default, {name="DrKevorkian", chance=1, room="pharmacystorage", gender="male"});

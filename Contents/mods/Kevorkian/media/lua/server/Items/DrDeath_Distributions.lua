require 'Items/Distributions'
require 'Items/ProceduralDistributions'
require 'Items/SuburbsDistributions'
require 'Vehicles/VehicleDistributions'

Distributions = Distributions or {};
ProceduralDistributions = ProceduralDistributions or {};
SuburbsDistributions = SuburbsDistributions or {};
VehicleDistributions = VehicleDistributions or {};

-- -----------------------------------------------------------------
-- OUTFIT BASED LOOT DISTRIBUTIONS ---------------------------------
-- -----------------------------------------------------------------
-- > Dr Kevorkian
local DrKevorkian_Loot = {
    rolls = 1,
    items = {
        "Kevorkian.DrDeathRecipePills", 1000,
        "Kevorkian.DrDeathSuicidePills", 1000,
    }
};
SuburbsDistributions.all.Outfit_DrKevorkian = DrKevorkian_Loot;

-- > Dr Kevorkian Group Members
local DrKevorkianGroupMember_Loot = {
    rolls = 1,
    items = {
        "Cigarettes", 2,
        "Scalpel", 25,
        "Pen", 50,
        "Wallet", 10,
        "Bandage", 10,
        "PillsBeta", 10,
        "PillsAntiDep", 15,
        "Pills", 25,
        "PillsSleepingTablets", 20,
        "WhiskeyEmpty", 50,
        "Kevorkian.DrDeathRecipePills", 0.01,
        "Kevorkian.DrDeathRecipeDrink", 1,
        "Kevorkian.DrDeathSuicideDrink", 5,
        "Kevorkian.DrDeathSuicidePills", 1000,
    }
}
SuburbsDistributions.all.Outfit_DrKevorkianGroupMember = DrKevorkianGroupMember_Loot;


-- -----------------------------------------------------------------
-- PROCEDURAL DISTRIBUTIONS ----------------------------------------
-- -----------------------------------------------------------------
-- > Pills
table.insert(ProceduralDistributions.list["ArmyStorageMedical"].items, "Kevorkian.DrDeathSuicidePills");
table.insert(ProceduralDistributions.list["ArmyStorageMedical"].items, 0.1);
table.insert(ProceduralDistributions.list["DrugLabSupplies"].items, "Kevorkian.DrDeathSuicidePills");
table.insert(ProceduralDistributions.list["DrugLabSupplies"].items, 0.25);
table.insert(ProceduralDistributions.list["MedicalClinicDrugs"].items, "Kevorkian.DrDeathSuicidePills");
table.insert(ProceduralDistributions.list["MedicalClinicDrugs"].items, 0.5);
table.insert(ProceduralDistributions.list["MedicalStorageDrugs"].items, "Kevorkian.DrDeathSuicidePills");
table.insert(ProceduralDistributions.list["MedicalStorageDrugs"].items, 0.5);
-- > Drinks
table.insert(ProceduralDistributions.list["BarCounterWeapon"].items, "Kevorkian.DrDeathSuicideDrink");
table.insert(ProceduralDistributions.list["BarCounterWeapon"].items, 0.25);
table.insert(ProceduralDistributions.list["BedroomSideTable"].items, "Kevorkian.DrDeathSuicideDrink");
table.insert(ProceduralDistributions.list["BedroomSideTable"].items, 0.01);
table.insert(ProceduralDistributions.list["DrugShackMisc"].items, "Kevorkian.DrDeathSuicideDrink");
table.insert(ProceduralDistributions.list["DrugShackMisc"].items, 0.1);
table.insert(ProceduralDistributions.list["JanitorChemicals"].items, "Kevorkian.DrDeathSuicideDrink");
table.insert(ProceduralDistributions.list["JanitorChemicals"].items, 0.1);
table.insert(ProceduralDistributions.list["MotelFridge"].items, "Kevorkian.DrDeathSuicideDrink");
table.insert(ProceduralDistributions.list["MotelFridge"].items, 0.1);
table.insert(ProceduralDistributions.list["OfficeDesk"].items, "Kevorkian.DrDeathSuicideDrink");
table.insert(ProceduralDistributions.list["OfficeDesk"].items, 0.001);
table.insert(ProceduralDistributions.list["PlankStashGun"].items, "Kevorkian.DrDeathSuicideDrink");
table.insert(ProceduralDistributions.list["PlankStashGun"].items, 1);
table.insert(ProceduralDistributions.list["PlankStashMoney"].items, "Kevorkian.DrDeathSuicideDrink");
table.insert(ProceduralDistributions.list["PlankStashMoney"].items, 5);
-- > Drink Recipe
table.insert(ProceduralDistributions.list["PrisonCellRandom"].items, "Kevorkian.DrDeathRecipeDrink");
table.insert(ProceduralDistributions.list["PrisonCellRandom"].items, 0.01);


-- -----------------------------------------------------------------
-- SUBURB DISTRIBUTIONS --------------------------------------------
-- -----------------------------------------------------------------
-- > Pills
table.insert(SuburbsDistributions["all"]["inventorymale"].items, "Kevorkian.DrDeathSuicidePills");
table.insert(SuburbsDistributions["all"]["inventorymale"].items, 0.001);
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, "Kevorkian.DrDeathSuicidePills");
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, 0.001);
-- > Drinks
table.insert(SuburbsDistributions["all"]["inventorymale"].items, "Kevorkian.DrDeathSuicidePills");
table.insert(SuburbsDistributions["all"]["inventorymale"].items, 0.05);
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, "Kevorkian.DrDeathSuicidePills");
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, 0.05);


-- -----------------------------------------------------------------
-- VEHICLE DISTRIBUTIONS -------------------------------------------
-- -----------------------------------------------------------------
-- > Pills
table.insert(VehicleDistributions["DoctorTruckBed"].items, "Kevorkian.DrDeathSuicidePills");
table.insert(VehicleDistributions["DoctorTruckBed"].items, 1);
-- > Drinks
table.insert(VehicleDistributions["GloveBox"].items, "Kevorkian.DrDeathSuicideDrink");
table.insert(VehicleDistributions["GloveBox"].items, 0.01);
table.insert(VehicleDistributions["SurvivalistTruckBed"].items, "Kevorkian.DrDeathSuicideDrink");
table.insert(VehicleDistributions["SurvivalistTruckBed"].items, 1);

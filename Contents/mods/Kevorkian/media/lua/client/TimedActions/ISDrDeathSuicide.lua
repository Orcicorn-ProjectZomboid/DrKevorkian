require "TimedActions/ISBaseTimedAction"


ISDrDeathSuicide = ISBaseTimedAction:derive("ISDrDeathSuicide")
function ISDrDeathSuicide:isValid()
	return true
end

function ISDrDeathSuicide:update()
	local uispeed = UIManager.getSpeedControls():getCurrentGameSpeed()
    if uispeed ~= 1 then
        UIManager.getSpeedControls():SetCurrentGameSpeed(1)
    end
end


function ISDrDeathSuicide:start()
	self.character:Say(getText("UI_suicide_farewell"));
	if self.animation == "Drink" then
		self:setActionAnim(CharacterActionAnims.Drink);
	else 
		self:setActionAnim(CharacterActionAnims.Eat);
	end
	self:setOverrideHandModels(nil, self.item);

end


function ISDrDeathSuicide:perform()
	-- Well, you drank/ate it. Time to die
	playerStats = self.character:getStats();
	playerDamage = self.character:getBodyDamage();

	-- Woo wee, farewell cruel world
	if self.animation == "Pills" then
		-- Instant suicide pills. Does not come back as a zombie
		playerDamage:setInfectionLevel(0);
		self.character:Kill(self.Character)
	else
		-- Suicide Drink, we're gonna get pretty messed up
		-- May still come back as a zombie if infected
		self.character:splatBloodFloorBig();
		playerStats:setEndurance(0);
		playerStats:setSickness(100);
		playerStats:setDrunkenness(50);
		playerStats:setPain(0);
		playerStats:setFatigue(100);
		playerDamage:setFakeInfectionLevel(1000);
		playerDamage:setPainReduction(0)
		playerDamage:setFoodSicknessLevel(1000);
		playerDamage:setWetness(25);
		playerDamage:setReducedHealthAddition(1000);
		playerDamage:setUnhappynessLevel(50);
		playerDamage:setPoisonLevel(self.item:getPoisonPower() * 10)
		playerDamage:TriggerSneezeCough();
		playerDamage:getBodyPart(BodyPartType.Head):setBleeding(true);
		playerDamage:getBodyPart(BodyPartType.Neck):setBurned();
		playerDamage:getBodyPart(BodyPartType.Torso_Lower):setBurned();
		self.character:splatBloodFloorBig();
	end

	-- Consume the Item
	self.item:Use();
	self.item:setJobDelta(0)
	ISBaseTimedAction.perform(self)
end


function ISDrDeathSuicide:new(character, item, animation)
	local o = {}
	setmetatable(o, self)
	self.__index = self
	o.character = character;
	o.item = item;
	o.animation = animation;
    o.stopOnRun = false;
    o.stopOnWalk = false;
	o.stopOnAim = false;
	o.maxTime = 120;
	return o
end

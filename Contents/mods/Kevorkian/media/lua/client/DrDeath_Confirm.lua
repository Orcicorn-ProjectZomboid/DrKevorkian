-- ----------------------------------------------------- --
-- Time to Die ----------------------------------------- --
-- ----------------------------------------------------- --
local function DrDeathSuicide(playerObject, item)
    -- print("DrDeathSuicide");
    playerStats = playerObject:getStats();
    playerDamage = playerObject:getBodyDamage();

    -- Reduce your ability to function
    playerStats:setDrunkenness(50);
    playerStats:setFatigue(100);
end


-- ----------------------------------------------------- --
-- Result of the Prompt -------------------------------- --
-- ----------------------------------------------------- --
local function DrDeathSuicidePromptResult(dummy, button, playerObject, item)
    -- print("DrDeathSuicidePromptResult")
    -- If cancelled, then stop processing
    if button.internal == "NO" then
        -- print("> Suicide cancelled");
        return
    end

    if item:getType() == "DrDeathSuicideDrink" then
        -- print("Drink")
        ISTimedActionQueue.add(ISDrDeathSuicide:new(playerObject, item, "Drink"))
        return
    end

    if item:getType() == "DrDeathSuicidePills" then
        -- print("Pills")
        ISTimedActionQueue.add(ISDrDeathSuicide:new(playerObject, item, "Pills"))
        return
    end
end


-- ----------------------------------------------------- --
-- Prompt to Confirm you want to die ------------------- --
-- ----------------------------------------------------- --
local function DrDeathSuicidePrompt(playerObject, item)
    -- print("Prompt!");
    local playerNum = playerObject:getPlayerNum()
    -- function ISModalDialog:new(x, y, width, height, text, yesno, target, onclick, player, param1, param2)
	local modal = ISModalDialog:new(getCore():getScreenWidth()/2 - 350/2, getCore():getScreenHeight()/2 - 150/2, 350, 150, getText("UI_suicide_confirm"), 
        true, nil, DrDeathSuicidePromptResult, playerNum, playerObject, item)
	modal:initialise()
	modal.prevFocus = getPlayerMechanicsUI(playerNum)
	modal.moveWithMouse = true
	modal:addToUIManager()
	if JoypadState.players[playerNum+1] then
		setJoypadFocus(playerNum, modal)
	end
    -- print("Prompt End")
end


-- ----------------------------------------------------- --
-- Context menu when right-click the inventory item ---- --
-- ----------------------------------------------------- --
local function DrDeathSuicideContextMenu(player, context, items)
    -- print("DrDeathSuicideContextMenu");
    local playerObject = getSpecificPlayer(player)
    items = ISInventoryPane.getActualItems(items)
    for _, item in ipairs(items) do
        local option = nil
        if item:getType() == "DrDeathSuicidePills" or item:getType() == "DrDeathSuicideDrink" then
            -- print("Add Context Option")
            option = context:addOption(getText("UI_suicide_menu"), playerObject, DrDeathSuicidePrompt, item);
            return;
        end
    end
end
Events.OnFillInventoryObjectContextMenu.Add(DrDeathSuicideContextMenu);
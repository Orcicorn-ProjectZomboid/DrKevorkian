-- See scripts/DrDeath_attachments.txt
local group = AttachedLocations.getGroup("Human")
group:getOrCreateLocation("DrDeath Hidden"):setAttachmentName("DrDeathHidden")

-- IDK but everyone seems to put this at the bottom of their attached
-- locations script. So I did too... I'm a lemming apparently.
if getDebug() then
	group:getOrCreateLocation("OnBack"):setAttachmentName("back")
end

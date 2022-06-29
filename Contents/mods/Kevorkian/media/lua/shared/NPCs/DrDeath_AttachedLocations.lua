local group = AttachedLocations.getGroup("Human")
group:getOrCreateLocation("DrDeath Hidden"):setAttachmentName("DrDeathHidden")

if getDebug() then
	group:getOrCreateLocation("OnBack"):setAttachmentName("back")
end

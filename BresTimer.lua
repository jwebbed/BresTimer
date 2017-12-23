function HelloWorld(self) 
	print("Hello World!"); 
end

function encounterStart(encounterId, encounterName, difficultyID, raidSize)
	if difficultyID >= 14 and difficultyID <= 16 then
		print("currently in a raid")
	end
end

function BresTimerEventHandler(frame, event, firstArg, secondArg, thirdArg, fourthArg)	
    if event == "ENCOUNTER_START" then
		DEFAULT_CHAT_FRAME:AddMessage(format("%s - %s - %s - %s", firstArg, secondArg, thirdArg, fourthArg))
		encounterStart(firstARg, secondArg, thirdArg, fourthArg)
    end
end

local f = CreateFrame("Frame", nil, UIParent)
f:SetScript("OnEvent", BresTimerEventHandler)
f:RegisterEvent("ENCOUNTER_START")
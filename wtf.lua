local AllRequest = http_request or request or HttpPost or syn.request

function GetFightingStyle(Style)
	ReturnText = ""
	for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == Style then
				ReturnText = v.Name
			end
		end
	end
	for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == Style then
				ReturnText = v.Name
			end
		end
	end
	if ReturnText ~= "" then
		return ReturnText
	else
		return "Not Have"
	end
end

function GetAwaken()
	ReturnText = ""
	Awakened_Z = " ❌"
	Awakened_X = " ❌"
	Awakened_C = " ❌"
	Awakened_V = " ❌"
	Awakened_F = " ❌"
	for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == "Blox Fruit" then
				if v:FindFirstChild("AwakenedMoves") then
					if v.AwakenedMoves:FindFirstChild("Z") then
						Awakened_Z = " ✔"
					end
					if v.AwakenedMoves:FindFirstChild("X") then
						Awakened_X = " ✔"
					end
					if v.AwakenedMoves:FindFirstChild("C") then
						Awakened_C = " ✔"
					end
					if v.AwakenedMoves:FindFirstChild("V") then
						Awakened_V = " ✔"
					end
					if v.AwakenedMoves:FindFirstChild("F") then
						Awakened_F = " ✔"
					end
					ReturnText = "Skill Z:"..Awakened_Z..
						"\n".."Skill X:"..Awakened_X..
						"\n".."Skill C:"..Awakened_C..
						"\n".."Skill V:"..Awakened_V..
						"\n".."Skill F:"..Awakened_F
				else
					ReturnText = "This Fruit Can't Awakened"
				end
			end
		end
	end
	for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == "Blox Fruit" then
				if v:FindFirstChild("AwakenedMoves") then
					if v.AwakenedMoves:FindFirstChild("Z") then
						Awakened_Z = " ✔"
					end
					if v.AwakenedMoves:FindFirstChild("X") then
						Awakened_X = " ✔"
					end
					if v.AwakenedMoves:FindFirstChild("C") then
						Awakened_C = " ✔"
					end
					if v.AwakenedMoves:FindFirstChild("V") then
						Awakened_V = " ✔"
					end
					if v.AwakenedMoves:FindFirstChild("F") then
						Awakened_F = " ✔"
					end
					ReturnText = "Skill Z:"..Awakened_Z..
						"\n".."Skill X:"..Awakened_X..
						"\n".."Skill C:"..Awakened_C..
						"\n".."Skill V:"..Awakened_V..
						"\n".."Skill F:"..Awakened_F
				else
					ReturnText = "This Fruit Can't Awakened"
				end
			end
		end
	end
	if ReturnText ~= "" then
		return ReturnText
	else
		return "Not Have"
	end
end

function GetWeapon(Rare)
	if Rare == "Common" then
		RareNumber = 0
	elseif Rare == "Uncommon" then
		RareNumber = 1
	elseif Rare == "Rare" then
		RareNumber = 2
	elseif Rare == "Legendary" then
		RareNumber = 3
	elseif Rare == "Mythical" then
		RareNumber = 4
	else
		return "Worng InPut"
	end
	local ReturnText = ""
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do
		if type(v) == "table" then
			if v.Rarity then
				if tonumber(v.Rarity) == RareNumber then
					ReturnText = ReturnText .. v.Name .. "\n"
				end
			end
		end
	end
	if ReturnText ~= "" then
		return ReturnText
	else
		return "Not Have"
	end
end

function GetFruitInU()
	local ReturnText = ""
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
		if type(v) == "table" then
			if v ~= nil then
				ReturnText = ReturnText .. v.Name .. " : " .. v.Price .. "\n"
			end
		end
	end

	if ReturnText ~= "" then
		return ReturnText
	else
		return "Not Have"
	end
end

function GetAllMelee()
	BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))
	if BuyDragonTalon then
		if BuyDragonTalon == 1 then
			TalComplete = true
		end
	end
	BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))
	if BuySuperhuman then
		if BuySuperhuman == 1 then
			SupComplete = true
		end
	end
	BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))
	if BuySharkmanKarate then
		if BuySharkmanKarate == 1 then
			SharkComplete = true
		end
	end
	BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true))
	if BuyDeathStep then
		if BuyDeathStep == 1 then
			DeathComplete = true
		end
	end
	BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
	if BuyElectricClaw then
		if BuyElectricClaw == 1 then
			EClawComplete = true
		end
	end
	BuyGod = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
	if BuyGod then
		if BuyGod == 1 then
			GodComplete = true
		end
	end
	ReturnText = {}
	if SupComplete == true then
		table.insert(ReturnText,"SuperHuman")
	end
	if EClawComplete == true then
		table.insert(ReturnText,"Electric Claw")
	end
	if TalComplete == true then
		table.insert(ReturnText,"Dragon Talon")
	end
	if SharkComplete == true then
		table.insert(ReturnText,"Sharkman Karate")
	end
	if DeathComplete == true then
		table.insert(ReturnText,"Death Step")
	end
	if GodComplete == true then
		table.insert(ReturnText,"God Human")
	end

	if #ReturnText ~= 0 then
		return table.concat(ReturnText,",")
	else
		return "Not Have"
	end
end

local username = tostring(game.Players.LocalPlayer.Name)
local level = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Level").Value)
local beli = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Beli").Value)
local fragment = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Fragments").Value)
local awaken = tostring(GetAwaken())
local rare = tostring(GetWeapon("Rare"))
local legendary = tostring(GetWeapon("Legendary"))
local mythic = tostring(GetWeapon("Mythical"))
local fruit_inv = tostring(GetFruitInU())
local all_melee =tostring(GetAllMelee())

function GetAlias()
	local inv = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
	local check6m = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodHuman",true) == 1

	if level <= "2399" then
		return "level. "..level
	elseif check6m then
		return "6Melee"
	elseif check6m and v.Name == "Cursed Dual Katana" then
		return "GOD+CDK"
	end
end

function SetAlias()
	AllRequest({
    	Url = "http://localhost:"..shared.port.."/SetAlias?Account="..username,
    	Method = 'POST',
    	Headers = {
    	    ["Content-Type"] = "application/json"
    	},
    	Body = GetAlias()
	})
	print("✅| Set Alias")
end

function SetDes()
	RAMDes = "--[ Beli: "..beli.." | Fragment: "..fragment.."]--\n\n--[ALL MELEE]--\n"..all_melee.."\n--[AWAKEN]--\n"..awaken.."\n--[RARE]--\n"..rare.."\n--[LEGENDARY]--\n"..legendary.."\n--[MYTHIC]--\n"..mythic.."\n--[FRUIT INVENTORY]--\n"..fruit_inv
	AllRequest({
    	Url = "http://localhost:"..shared.port.."/SetDescription?Account="..username,
    	Method = 'POST',
    	Headers = {
    		["Content-Type"] = "application/json"
    	},
   	Body = RAMDes
	})
	print("✅| Set Description")
end

while (true)
do
	SetDes()
	SetAlias()
	wait(180)
end
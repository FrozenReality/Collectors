AddCSLuaFile("shared.lua");
AddCSLuaFile("sh_player.lua");
AddCSLuaFile("cl_init.lua");

include("dayCycle.lua");
include("sh_player.lua");

function GM:Initialize()
    ServerLog('sweg');
end

function GM:PlayerDeath(victim, attacker)
	if (victim == attacker) then
		PrintMessage( HUD_PRINTTALK, "You're a fucking faggot");
	else
		PrintMessage( HUD_PRINTTALK,  "Test");
	end
end


[[

MONEY_STARTAMOUNT = 1000; --New players money amount.

function FirstSpawn(ply)
	local cash = ply:GetPData("money"); --Get the save money amount

	if cash == nil then --If it doesn't exist supply the player with the starting money
		ply:SetPData("money", MONEY_STARTAMOUNT); --Save it
		ply:SetMoney(MONEY_STARTAMOUNT); --Set it to the networked ints that can be called from the client too
	else
		ply:SetMoney(cash); --If not, set the networked ints to what we last saved
	end
end
hook.Add("PlayerInitialSpawn", "playerInitialSpawn", FirstSpawn);

function PrintCash(pl)
	pl:ChatPrint("Your cash is: " .. pl:GetMoney()); --Prints money amount
end

function fPlayerDisconnect(ply)
	print("Player Disconnect: Money save to SQLLite and TXT");
	ply:SaveMoney(); --Saves disconnected players money to SQL
	ply:SaveMoneyTXT(); --Saves disconnected players money to TXT
end

concommand.Add("cash_get", PrintCash);

]]
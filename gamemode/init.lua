AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")

include("dayCycle.lua")

function GM:Initialize()
    ServerLog('sweg\n');
    StartDay();
end

function GM:PlayerDeath(victim, attacker)
	if (victim == attacker) then
		PrintMessage( HUD_PRINTTALK, "You're a fucking faggot");
	else
		PrintMessage( HUD_PRINTTALK,  "Test");
	end
end
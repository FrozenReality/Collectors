AddCSLuaFile("shared.lua");

include("dayCycle.lua");

function GM:Initialize()
    ServerLog('sweg');
end

function GM:PlayerDeath(victim, attacker)
	if (victim == attacker) then
		PrintMessage( HUD_PRINTTALK, victim:Name() .. " commited suicide.")
	else
		PrintMessage( HUD_PRINTTALK, victim:Name() .. " was not in a safe zone")
	end
end
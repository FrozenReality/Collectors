ENT.Type 		= "brush";

AddCSLuaFile("shared.lua");

function ENT:StartTouch( ent )
    if ent:IsPlayer() then
        playersInSafeZone[ent:SteamID()] = ent;
    end
end

function ENT:EndTouch( ent )
    if ent:IsPlayer() then
        playersInSafeZone[ent:SteamID()] = nil;
    end
end
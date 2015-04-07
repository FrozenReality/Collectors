ENT.Type 		= "brush"

players = {};

AddCSLuaFile("shared.lua")

function ENT:StartTouch( ent )
    if ent:IsPlayer() then
        table.insert(players, ent);
    end
end

function ENT:EndTouch( ent )
    table.RemoveByValue(players, ent);
end
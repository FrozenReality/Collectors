function hud()

local health = LocalPlayer():Health()
draw.RoundedBox(0, 5, ScrH() - 15 - 20, health, 15, Color(255,0,0,255))
draw.SimpleText(health, "default", 10, ScrH() - 15 - 40, Color(255,255,255,255))
end 

hook.Add("HUDPaint", "MyHudName", hud)
 
function hidehud(name)
	for k, v in pairs({"CHudHealth", "CHudBattery", "CHudAmmo", "CHudSecondaryAmmo"}) do
		if name == v then return false end
	end
end

hook.Add("HUDShouldDraw", "HideOurHud:D", hidehud)
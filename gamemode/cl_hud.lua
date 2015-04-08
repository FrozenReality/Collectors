hook.Add("HUDPaint", "WhiteBox", function()
	surface.SetDrawColor(Color(0, 0, 0, 230))
	surface.DrawRect(0, 875, ScrW() / 5, ScrH() / 4)
	surface.DrawRect(1550, 875, ScrW() / 4, ScrH() / 4)
end)

hook.Add("HUDPaint", "text", function()
	surface.CreateFont("default", {
			font = "Arial", 
			size = 30, 
			weight = 500, 
		})
	surface.SetFont("default")
	surface.SetTextColor(255, 255, 255, 230)
	surface.SetTextPos(50, 875)
	surface.DrawText("You have ebola now")
end)

function hidehud(name) -- Removing the default HUD
	for k, v in pairs({"CHudHealth", "CHudBattery", "CHudAmmo", "CHudSecondaryAmmo", })do
		if name == v then return false end
	end
end
hook.Add("HUDShouldDraw", "HideOurHud:D", hidehud)

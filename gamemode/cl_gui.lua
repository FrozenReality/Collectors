function ShowStartMenu()
	local sMenu = vgui.Create("DFrame")
	sMenu:SetPos(5,5)
	sMenu:SetSize(300,150)
	sMenu:SetTitle("Welcome to Collectors")
	sMenu:SetVisible(true)
	sMenu:SetDraggable(true)
	sMenu:ShowCloseButton(true)
	sMenu:MakePopup()
end

ShowStartMenu();
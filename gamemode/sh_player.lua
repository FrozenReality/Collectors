[[

local meta = FindMetaTable("Player"); --Get the meta table of player

function meta:AddMoney(amount)
	local current_cash = self:GiveMoney();
end

function meta:SetMoney(amount)
	self:SetNetworkInt("Money", amount);
	self:SaveMoney();
end

function meta:SaveMoney()
	local cash = self:GetMoney();
	self.SetPData("money", cash);
end

function SaveMoneyTXT()
	file.Write(gmod.GetGameMode().Name .."/Money/".. string.gsub(self:SteamID(), ":", "_") ..".txt", self:GetMoneyString());
end

function meta:TakeMoney(amount)
	--Add money function here
	self:AddMoney(-amount);
end

function metaGetMoney(amount)
	return self:GetNetworkedInt("Money");
end

]]
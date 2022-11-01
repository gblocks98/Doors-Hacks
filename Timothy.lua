local currentLoadedRoom

local function setRooms()
	local tb = {}
	table.foreach(workspace.CurrentRooms:GetChildren(), function(_, r)
		if r:FindFirstChild("RoomStart") then
			table.insert(tb, tonumber(r.Name))
		end
	end)
	currentLoadedRoom = workspace.CurrentRooms[tostring(math.max(unpack(tb)) - 1)]
end
setRooms()
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.SpiderJumpscare)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), currentLoadedRoom.Assets.Dresser.DrawerContainer, 0)

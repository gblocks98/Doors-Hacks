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
require(game.ReplicatedStorage.ClientModules.Module_Events).tryp(currentLoadedRoom, 9e307)

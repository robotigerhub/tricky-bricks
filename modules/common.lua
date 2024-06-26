local M = {}

M.TILE_SIZE = 18  -- px
M.SUPPORT_COUNT = 4
M.DEADLINE_RAISE = 5  -- tiles
M.SUPPORT_X_MIN = 4  -- tiles
M.SUPPORT_X_MAX = 7  -- tiles
M.SPAWN_DEADLINE_DIST = 10  -- tiles
M.SPAWN_RAYCASTER_DIST = 15  -- tiles
M.STATES = {current = {still = 1, skidding = 2}, put = 3, falling = 4, lost = 5}

function M.is_state(my_state, state)
	if type(state) == "number" then
		return my_state == state
	elseif type(state) == "table" then
		for _, v in pairs(state) do
			if M.is_state(my_state, v) then
				return true
			end
		end
		return false
	else
		print("Wrong state type")
	end
end

return M
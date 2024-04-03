local M = {}

M.TILE_SIZE = 18  -- px
M.SPAWNPOINT_RAISE = 8  -- tiles
M.STATES = {current = {still = 1, skidding = 2}, put = 3, falling = 4}

function M.table_has_vec(t, vec)
	for i = 1,#t do
		if t[i].x == vec.x
		and t[i].y == vec.y
		and t[i].z == vec.z then
			return true
		end
	end
	return false
end

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
local M = {}

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

return M
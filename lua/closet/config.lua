local M = {}

function M.set(opts)
	M.current = vim.tbl_deep_extend("force", vim.deepcopy(M.current), opts)
end

return M

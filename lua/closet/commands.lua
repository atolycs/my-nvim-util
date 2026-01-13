local M = {}

function M.init()
	vim.api.nvim_create_user_command("ReOpenJIS", vim.cmd(":e ++enc=cp932"), {
		desc = "File Re-Open Shift-JIS(cp932) encoding",
		nargs = 1,
	})
end

return M

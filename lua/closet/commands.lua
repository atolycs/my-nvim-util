local M = {}

local function reopen()
	vim.cmd(":e ++enc=cp932", {
		desc = "File Re-Open Shift-JIS(cp932) encoding",
	})

	vim.notify(vim.fn.expand("%:.") .. " : Re-Opend cp932 encoding", vim.log.levels.INFO)
end

function M.init()
	vim.api.nvim_create_user_command("ReOpenJIS", reopen, {
		desc = "File Re-Open Shift-JIS(cp932) encoding",
	})
end

return M

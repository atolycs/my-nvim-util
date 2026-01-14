local M = {}

local function reopen()
	vim.cmd(":e ++enc=cp932", {
		desc = "File Re-Open Shift-JIS(cp932) encoding",
	})

	vim.notify(vim.fn.expand("%:.") .. " : Re-Opend cp932 encoding", vim.log.levels.INFO)
end

local function devterm()
	vim.cmd("split")
	vim.cmd("terminal")
	vim.cmd("resize 5")
end

function M.init()
	vim.api.nvim_create_user_command("ReOpenJIS", reopen, {
		desc = "File Re-Open Shift-JIS(cp932) encoding",
	})

	vim.api.nvim_create_user_command("DevTerm", devterm, {
		desc = "Open Develop Terminal in Current Directory",
	})
end

return M

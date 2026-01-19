local M = {}

local cmds = {}

local function reopen()
	vim.cmd(":e ++enc=cp932", {
		desc = "File Re-Open Shift-JIS(cp932) encoding",
	})
end

local function autocmd()
	vim.api.nvim_create_autocmd("TermClose", {
		callback = function()
			if vim.g.atolycs_devterm then
				vim.cmd("c")
			end

			vim.g.atolycs_devterm = false
		end,
	})
end

local function devterm()
	vim.cmd("split")
	vim.cmd("terminal")
	vim.cmd("resize 5")
	vim.g.atolycs_devterm = true
end

function M.init()
	autocmd()
	vim.api.nvim_create_user_command("ReOpenJIS", reopen, {
		desc = "File Re-Open Shift-JIS(cp932) encoding",
	})

	vim.api.nvim_create_user_command("DevTerm", devterm, {
		desc = "Open Develop Terminal in Current Directory",
	})
end

return M

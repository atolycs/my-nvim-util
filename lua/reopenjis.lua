local M = {}

function M.setup()
	vim.api.nvim_create_user_command("ReOpenJIS", "e ++enc=cp932 <q-args>", { nargs = 1 })
end

return M

local M = {}

function M.setup()
	vim.notify("Loading closet...", vim.log.levels.INFO)
	local cmds = require("closet.commands")
	-- local config = require("closet.config")
	-- config.set()
	cmds.init()
end

return M

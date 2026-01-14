local M = { setup_done = false }
-- local configs = require("closet.config")

function M.setup()
	if M.setup_done then
		return
	end
	vim.notify("Loading closet...", vim.log.levels.INFO)

	-- if config then
	-- 	configs.set(config)
	-- end
	local cmds = require("closet.commands")
	-- -- local config = require("closet.config")
	-- -- config.set()
	cmds.init()

	M.setup_done = true

	if M.setup_done then
		vim.notify("Closet Loaded.", vim.log.levels.INFO)
	end
end

return {
	setup = M.setup,
}

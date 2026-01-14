local timer = (vim.uv or vim.loop).new_timer()

if vim.g.loaded_closet then
	return
end
vim.g.loaded_closet = true

if vim.fn.has("nvim-0.7.0") == 0 then
	vim.notify("requires at least NeoVim 0.7.0", vim.log.levels.ERROR)
	return
end

timer:start(
	500,
	0,
	vim.schedule_wrap(function()
		local closet = require("closet")
		if not closet.did_setup then
			closet.setup()
		end
	end)
)
-- require("closet.init").setup()

local timer = (vim.uv or vim.loop).new_timer()

if vim.g.loaded_closet then
	return
end

if vim.fn.has("nvim-0.7.0") == 0 then
	vim.notify("requires at least NeoVim 0.7.0", vim.log.levels.ERROR)
	return
end

timer:start(
	500,
	0,
	vim.schedule_wrap(function()
		vim.notify("Auto Loading closet...", vim.log.levels.INFO, {
			id = "atolycs-utility",
			title = "Amiya",
		})

		local closet = require("closet")
		if not closet.did_setup then
			closet.setup()
			vim.g.loaded_closet = true
		end

		if vim.g.loaded_closet then
			vim.notify("WELCOME BACK Doctor.", vim.log.levels.INFO, {
				id = "atolycs-utility",
				title = "🐰 Amiya",
			})
		end
	end)
)

-- require("closet.init").setup()

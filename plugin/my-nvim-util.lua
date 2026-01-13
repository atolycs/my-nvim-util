if vim.g.loaded_closet then
	return
end
vim.g.loaded_closet = true

if vim.fn.has("nvim-0.7.0") == 0 then
	vim.notify("requires at least NeoVim 0.7.0", vim.log.levels.ERROR)
	return
end

-- require("closet.init").setup()

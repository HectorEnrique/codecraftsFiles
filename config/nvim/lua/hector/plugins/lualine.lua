local status, lualine = pcall(require, "lualine")
if not lualine then
	return
end

lualine.setup({
	options = { theme = "iceberg_dark" },
})

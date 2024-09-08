-- import windowpicker plugin safely
local setup, neotest = pcall(require, "neotest")
if not setup then
	return
end

neotest.setup({
	adapters = {
		-- require("neotest-python")({
		-- 	dap = { justMyCode = false },
		-- }),
		-- require("neotest-go")({
		-- 	dap = { justMyCode = false },
		-- }),
		-- require("neotest-scala")({
		-- 	dap = { justMyCode = false },
		-- }),
		require("neotest-gtest").setup({}),
		-- require("rustaceanvim")({
		-- 	dap = { justMyCode = false },
		-- }),
		-- require("nettest-java")({
		-- 	dap = { justMyCode = false },
		-- }),
		require("neotest-plenary"),
		-- require("neotest-vim-test")({
		-- 	ignore_file_types = { "python", "vim", "lua" },
		-- }),
	},
})

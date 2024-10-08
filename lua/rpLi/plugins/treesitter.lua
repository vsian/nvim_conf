-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

-- configure treesitter
treesitter.setup({
	-- enable syntax highlighting
	highlight = {
		enable = true,
	},
	-- enable indentation
	indent = { enable = true },
	-- enable autotagging (w/ nvim-ts-autotag plugin)
	autotag = { enable = true },
	-- ensure these language parsers are installed
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"yaml",
		"html",
		"css",
		"markdown",
		"markdown_inline",
		"svelte",
		"graphql",
		"bash",
		"lua",
		"vim",
		"vimdoc",
		"dockerfile",
		"gitignore",
		"c",
		"cpp",
		"elixir",
		"gitcommit",
		"git_rebase",
		"git_config",
		"go",
		"rust",
		"python",
		"java",
		"gomod",
		"gosum",
		"ocaml",
		"sql",
	},
	-- auto install above language parsers
	auto_install = true,
})

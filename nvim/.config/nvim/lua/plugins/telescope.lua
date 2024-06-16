return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			--      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
			--      vim.keymap.set('n', '<Leader>fg', builtin.live_grep, {})
			vim.keymap.set("n", "<Leader>fs", builtin.find_files, {})
			vim.keymap.set("n", "<Leader>fz", builtin.live_grep, {})
			vim.keymap.set("n", "<Leader>fb", builtin.buffers, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
					"fzf",
				},
				pickers = {
					live_grep = {
						file_ignore_patterns = { "node_modules", ".git", ".venv" },
						additional_args = function(_)
							return { "--hidden" }
						end,
					},
					find_files = {
						file_ignore_patterns = { "node_modules", ".git", ".venv" },
						hidden = true,
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}

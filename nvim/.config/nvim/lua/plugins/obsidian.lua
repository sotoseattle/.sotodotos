return {
	"epwalsh/obsidian.nvim",
	version = "*",
	lazy = false, -- if true, :Obsidian commands only open on buffered md files
	ft = "markdown",
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "sotolog",
				path = "~/Dropbox/sotolog",
			},
		},
		notes_subdir = "1-Inbox",
		new_notes_location = "notes_subdir",

		disable_frontmatter = true,
		templates = {
			subdir = "5-Templates",
			date_format = "%Y-%m-%d",
			time_format = "%H:%M",
		},

		mappings = {
			["gf"] = {
				action = function()
					return require("obsidian").util.gf_passthrough()
				end,
				opts = { noremap = false, expr = true, buffer = true },
			},
		},
		completion = {
			nvim_cmp = true,
			min_chars = 2,
		},
		ui = {
			checkboxes = {},
			bullets = {},
		},
	},
}

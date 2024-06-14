return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.startify")
		dashboard.section.header.val = {
			[[┏┓       ┏┓   ┓•      ]],
			[[┗┓┏┓╋┏┓  ┃ ┏┓┏┫┓┏┓┏┓  ]],
			[[┗┛┗┛┗┗┛  ┗┛┗┛┗┻┗┛┗┗┫  ]],
			[[                   ┛  ]],
		}

		alpha.setup(dashboard.opts)
	end,
}
-- https://patorjk.com/software/taag/#p=display&f=Tmplr&t=Soto%20Coding%20

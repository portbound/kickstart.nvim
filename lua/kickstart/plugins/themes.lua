return {
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		config = function()
			require("tokyonight").setup({})
			--vim.cmd.colorscheme("tokyonight")
		end,
	},
	{
		"vague2k/vague.nvim",
		priority = 1000,
		config = function()
			require("vague").setup({
				comments = "italic",
				transparent = false,
				style = {
					style = {},
				},
			})
			vim.cmd.colorscheme("vague")
		end,
	},
	{
		"rose-pine/neovim",
		priority = 1000,
		config = function()
			require("rose-pine").setup({
				transparent = true,
				style = {
					style = {},
				},
			})
			--vim.cmd 'colorscheme rose-pine'
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				--transparent = true,
			})
			--vim.cmd 'colorscheme kanagawa-paper-ink'
		end,
	},
	{
		"thesimonho/kanagawa-paper.nvim",
		priority = 1000,
		config = function()
			require("kanagawa-paper").setup({
				--transparent = true,
			})
			--vim.cmd 'colorscheme kanagawa-paper-ink'
		end,
	},
	{
		"catppuccin/nvim",
		priority = 1000,
		config = function()
			require("catppuccin").setup({})
			--vim.cmd 'colorscheme catppuccin'
		end,
	},
	{
		"ramojus/mellifluous.nvim",
		config = function()
			require("mellifluous").setup({})
			--vim.cmd("colorscheme mellifluous")
		end,
	},
	{
		"savq/melange-nvim",
		config = function()
			--vim.cmd.colorscheme("melange")
		end,
	},
	{
		"zenbones-theme/zenbones.nvim",
		-- Optionally install Lush. Allows for more configuration or extending the colorscheme
		-- If you don't want to install lush, make sure to set g:zenbones_compat = 1
		-- In Vim, compat mode is turned on as Lush only works in Neovim.
		dependencies = "rktjmp/lush.nvim",
		lazy = false,
		priority = 1000,
		-- you can set set configuration options here
		config = function()
			vim.g.zenbones_darken_comments = 45
			--vim.cmd.colorscheme("zenbones")
		end,
	},
	{
		"rjshkhr/shadow.nvim",
		priority = 1000,
		config = function()
			vim.opt.termguicolors = true
			--vim.cmd.colorscheme("shadow")
		end,
	},
	{
		"anAcc22/sakura.nvim",
		dependencies = "rktjmp/lush.nvim",
		config = function()
			transparent = true
			vim.opt.background = "dark" -- or "light"
			--vim.cmd("colorscheme sakura") -- sets the colorscheme
			-- Force transparency
			local groups = {
				"Normal",
				"NormalNC",
				"NormalFloat",
				"FloatBorder",
				"SignColumn",
				"VertSplit",
				"StatusLine",
				"TabLineFill",
			}
			for _, group in ipairs(groups) do
				vim.api.nvim_set_hl(0, group, { bg = "none" })
			end
		end,
	},
	{
		"aktersnurra/no-clown-fiesta.nvim",
		config = function()
			transparent = true
			--vim.cmd.colorscheme("no-clown-fiesta")
		end,
	},
	{
		"kimjbaran/voyager.nvim",
		config = function()
			--vim.cmd.colorscheme("voyager")
		end,
	},
	{
		"cdmill/neomodern.nvim",
		config = function()
			require("neomodern").setup({
				theme = "hojicha",
				transparent = true,
			})
			--vim.cmd.colorscheme("hojicha")
			--require("neomodern").load()
		end,
	},
}

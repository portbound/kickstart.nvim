return {
	"fnune/recall.nvim",
	version = "*",
	config = function()
		local recall = require("recall")

		recall.setup({
			sign_highlight = "@comment.note",
			telescope = {
				mappings = {
					unmark_selected_entry = {
						normal = "d",
						insert = "",
					},
				},
			},
		})

		vim.keymap.set("n", "<leader>mm", recall.toggle, { noremap = true, silent = true, desc = "toggle" })
		vim.keymap.set("n", "<leader>mn", recall.goto_next, { noremap = true, silent = true, desc = "go to prev mark" })
		vim.keymap.set("n", "<leader>mp", recall.goto_prev, { noremap = true, silent = true, desc = "go to next mark" })
		vim.keymap.set("n", "<leader>mc", recall.clear, { noremap = true, silent = true, desc = "clear" })
		vim.keymap.set(
			"n",
			"<leader>mf",
			":Telescope recall<CR>",
			{ noremap = true, silent = true, desc = "find marks" }
		)
	end,
}

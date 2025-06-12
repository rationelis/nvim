return {
	"hedyhli/outline.nvim",
	config = function()
		local opts = {
			symbol_folding = {
				autofold_depth = 2,
			},
		}
		require("outline").setup(opts)

		vim.keymap.set("n", "<leader>o", ":Outline<CR>", { noremap = true, silent = true, desc = "Toggle Outline" })
	end,
}

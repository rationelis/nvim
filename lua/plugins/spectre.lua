return {
	"nvim-pack/nvim-spectre",
	config = function()
		vim.keymap.set("n", "<leader>S", function()
			require("spectre").toggle()
		end, { desc = "Toggle Spectre" })

		vim.keymap.set("n", "<leader>sw", function()
			require("spectre").open_visual({ select_word = true })
		end, { desc = "Search current word" })

		vim.keymap.set("v", "<leader>sw", function()
			vim.cmd("esc") -- ensure normal mode before opening visual
			require("spectre").open_visual()
		end, { desc = "Search current word" })

		vim.keymap.set("n", "<leader>sp", function()
			require("spectre").open_file_search({ select_word = true })
		end, { desc = "Search on current file" })
	end,
}

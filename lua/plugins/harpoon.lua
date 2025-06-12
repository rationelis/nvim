return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	requires = { { "nvim-lua/plenary.nvim" } },
	config = function()
		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup()
		-- REQUIRED

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Harpoon: Add file" })
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Harpoon: Toggle menu" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-h>", function()
			harpoon:list():prev()
		end, { desc = "Harpoon: Prev buffer" })
		vim.keymap.set("n", "<C-l>", function()
			harpoon:list():next()
		end, { desc = "Harpoon: Next buffer" })
	end,
}

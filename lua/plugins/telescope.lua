return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local telescope = require("telescope")
        telescope.setup({})

        local builtin = require("telescope.builtin")
        local utils = require("telescope.utils")

        vim.keymap.set("n", "<leader>pf", function()
            require("telescope.builtin").find_files({
                cwd = require("project_nvim.project").get_project_root()
            })
        end, { desc = "Find Files in Project Root" })

        vim.keymap.set("n", "<leader>ps", function()
            require('telescope.builtin').live_grep()
        end, { noremap = true, silent = true, desc = "Live Grep in Project Root" })
    end,
}

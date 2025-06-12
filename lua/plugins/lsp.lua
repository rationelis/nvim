return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local on_attach = function(_, bufnr)
                local map = function(mode, lhs, rhs, desc)
                    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
                end
                map("n", "gd", vim.lsp.buf.definition, "Go to definition")
                map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
                map("n", "gr", vim.lsp.buf.references, "Go to references")
                map("n", "K", vim.lsp.buf.hover, "Hover documentation")
            end
            vim.lsp.inlay_hint.enable()
            vim.diagnostic.config({ virtual_text = true })
        end,
    },
    {
        "nvimdev/lspsaga.nvim",
        branch = "main",
        opts = {
            preview = {
                lines_above = 2,
                lines_below = 10,
            },
            symbol_in_winbar = {
                enable = false,
            },
            ui = {
                border = "single",
                code_action = "🦝",
            },
            lightbulb = {
                sign = false,
            },
        },
    },
    {
        "Saecki/crates.nvim",
        ft = "toml",
        opts = {},
        dependencies = { "nvimtools/none-ls.nvim" },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            { "nushell/tree-sitter-nu" },
        },
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "lua",
                    "vim",
                    "javascript",
                    "typescript",
                    "markdown",
                    "markdown_inline",
                    "bash",
                    "regex",
                    "nu",
                    "rust",
                },
            })
        end,
        build = ":TSUpdate",
    }
}

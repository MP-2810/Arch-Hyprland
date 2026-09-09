return {
    "mason-org/mason.nvim",
    event = "VeryLazy",
    dependencies = {
        "neovim/nvim-lspconfig",
        "mason-org/mason-lspconfig.nvim",
    },
    opts = {},
    config = function (_, opts)
        require("mason").setup(opts)

        vim.lsp.config("lua_ls", {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = {
                            "vim",
                            "config",
                            "hl",
                        },
                    },
                },
            },
        })

        -- config.server_capabilities=require("blink.cmp").get_lsp_capabilities()

        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "clangd",
                -- "rust_analyzer",

                "pyright",
                "jsonls",
                "cssls",
            }
        })

        vim.lsp.enable({
            "lua_ls",
            "clangd",
            -- "rust_analyzer",

            "pyright",
            "jsonls",
            "cssls",
        })

        vim.diagnostic.config({
            virtual_text = true,
            -- virtual_lines = true,
            update_in_insert = true,
        })

        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(args)
                local client = vim.lsp.get_client_by_id(args.data.client_id)

                if client and client.server_capabilities.diagnosticProvider then
                    vim.schedule(function()
                        vim.diagnostic.enable(true, {
                            bufnr = args.buf,
                        })
                    end)
                end
            end,
        })
    end,
}

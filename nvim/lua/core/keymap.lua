vim.keymap.set({ "n", "i" }, "<C-z>", "<Cmd>undo<CR>", { silent = true })
vim.keymap.set( "i", "<C-r>", "<Cmd>redo<CR>", {silent = true })

vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- 这部分是插件快捷键，注释放这里方便查找
--  -- bufferline
--  keys = {
--      { "<leader>bb", ":BufferLineCyclePrev<CR>", silent = true },
--      { "<leader>bn", ":BufferLineCycleNext<CR>", silent = true },
--      { "<leader>bp", ":BufferLinePick<CR>", silent = true },
--      { "<leader>bd", ":bdelete<CR>", silent = true},
--  }
--
--  -- hop
--  keys = {
--      { "<leader>hp", ":HopWord<CR>", silent = true }
--  }
--
--  -- lspsaga
--  keys = {
--      { "<leader>lr", ":Lspsaga rename<CR>" },
--      { "<leader>lc", ":Lspsaga code_action<CR>" },
--      { "<leader>ld", ":Lspsaga goto_definition<CR>" },
--      { "<leader>lh", ":Lspsaga hover_doc<CR>" },
--      { "<leader>lR", ":Lspsaga finder<CR>" },
--      { "<leader>ln", ":Lspsaga diagnostic_jump_next<CR>" },
--      { "<leader>lp", ":Lspsaga diagnostic_jump_prev<CR>" },
--  }
--
--  -- none-ls
--	keys = {
--		{
--			"<leader>lf",
--			function()
--				vim.lsp.buf.format()
--			end,
--		},
--	},
--
--    -- nvim-tree  
--    keys = {
--        { "<leader>nt", ":NvimTreeToggle<CR>" },
--    },

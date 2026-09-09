return {
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    opts = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- Set header
      dashboard.section.header.val = {

        "                                                     ",
        "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
        "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
        "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
        "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
        "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
        "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
        "                                                     ",
      }

      -- Set menu
      dashboard.section.buttons.val = {
        dashboard.button("n", "  New",  "<cmd>enew <bar> startinsert<cr>"),
        dashboard.button("f", "  Find", "<cmd>Telescope find_files<cr>"),
        dashboard.button("o", "  Recent",  "<cmd>Telescope oldfiles<cr>"),
        dashboard.button("g", "  Grep",  "<cmd>Telescope live_grep<cr>"),
        dashboard.button("l", "󰒲  Lazy", "<cmd>Lazy<cr>"),
        dashboard.button("q", "  Quit", "<cmd>qa<cr>"),
      }

      dashboard.section.footer.val = {
        "               ",
        "   -MParker-   ",
        "λShiki  Natsume",
        "λFrom CofStella",
      }
      dashboard.section.footer.opts.hl = "Keyword"

      -- Send config to alpha
      alpha.setup(dashboard.opts)

      -- Disable folding on alpha buffer
      vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
      -- return dashboard
    end,

    config = function(_ , dashboard)
      require("alpha").setup(require("alpha.themes.dashboard").config)
    end
  },
}

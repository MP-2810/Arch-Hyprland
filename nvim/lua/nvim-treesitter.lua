return {
    "nvim-treesitter/nvim-treesitter",
    main = "nvim-treesitter.configs",
    branch = "master",
    event = "VeryLazy",
    opts = {
        ensure_installed = { "c", "lua", "cpp", "haskell", "bash", "python", "rust", "css",
          "cmake", "json", "markdown", "markdown_inline", "html", "perl", "hyprlang",
          "vim", "vimdoc", "diff", "regex", "toml", "verilog", "scala" },
          -- do not use `zig`, which heavily slows down nvim
        highlight = { enable = true }
    },
}

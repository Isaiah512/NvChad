return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "pyright",
        "python-lsp-server",
        "dartls",
        "jdtls",
        "rust-analyzer",
        "clangd",
        "gopls",
        "kotlin-language-server",
        "intelephense",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "python",
        "dart",
        "java",
        "rust",
        "cpp",
        "go",
        "typescript",
        "kotlin",
        "php",
        "c",
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    },
    run = ':TSUpdate',
  },
}


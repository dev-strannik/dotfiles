return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    enabled = false,
    opts = {
      ensure_installed = {
        -- default
        "lua-language-server",
        "stylua",
        "prettier",

        -- toml
        "taplo",

        -- shell
        "shfmt",
        -- java
        "jdtls",
        "google-java-format",
        -- python
        "pyright",
        "black",
        "isort",
        -- latex
        "texlab",
        -- markdown
        "marksman",
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
        "json",
        "toml",
        "markdown",
        "markdown_inline",
        "javascript",
        "java",
        "cpp",
        "python",
      },
    },
  },
  {
    "lervag/vimtex",
    ft = { "tex" },
    init = function()
      vim.g.tex_flavor = "latex"
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_mappings_enabled = 0
      vim.g.vimtex_indent_enabled = 0

      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_context_pdf_viewer = "zathura"

      vim.g.vimtex_compiler_latexmk = {
        out_dir = "builds",
      }
    end,
  },
}

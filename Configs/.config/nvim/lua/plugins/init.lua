return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- LSP Support

  -- Mason
   {
    "williamboman/mason.nvim",
    config = function()
      local mason = require("mason")
      -- enable mason and configure icons
      mason.setup({
        ui = {
          border = "rounded", -- Use rounded borders for the Mason window
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
    end,
  },

  -- Mason-lspconfig
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",  "css-lsp",
        "pyright", "bashls", "rust_analyzer",
        "typescript-language-server",
      },
      automatic_installation = true,
    },
  },

  -- Mason tool installer
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      local mason_tool_installer = require("mason-tool-installer")

      mason_tool_installer.setup({
        ensure_installed = {
          "prettier", -- prettier formatter
          "stylua", -- lua formatter
          "isort", -- python formatter
          "black", -- python formatter
          "pylint", -- python linter
          "eslint_d", -- js linter
          "shfmt", -- bash formatter
          "nixfmt", -- nix formatter
          -- "rustfmt", -- bash formatter
        },

        integrations = {
          ['mason-lspconfig'] = true,
          ['mason-null-ls'] = true,
          ['mason-nvim-dap'] = true,
        },
      })
    end,

  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "python", "rust", "bash",
        "tsx", "css", "html",
  		},
  	},
  },
}

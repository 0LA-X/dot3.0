require("nvchad.configs.lspconfig").defaults()

local servers = { "bash-language-server", "rust_analyzer", "pyright", "typescript-language-server", "css-lsp", "html-lsp" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 

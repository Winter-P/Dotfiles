require("mappings")
require("plugins")

vim.opt.nu=true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.swapfile = false
vim.opt.backup  = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 16

--lsp setup
require('mason').setup()  -- Initialize mason
require('mason-lspconfig').setup({
    ensure_installed = { "clangd" }  -- Specify the language servers you want to install
})

require('lspconfig').clangd.setup{}  -- Setup the Python language server

local cmp = require('cmp')

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)  -- For snippet support
        end,
    },
    mapping = {
        ['ß'] = cmp.mapping.select_next_item(),  -- Navigate to next item
        ['á'] = cmp.mapping.select_prev_item(),  -- Navigate to previous item
        ['<C-Space>'] = cmp.mapping.complete(),       -- Trigger completion
        ['ä'] = cmp.mapping.confirm({ select = true }),  -- Confirm selection
        ['é'] = cmp.mapping.close(),              -- Close completion menu
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),     -- Scroll documentation up
        ['<C-d>'] = cmp.mapping.scroll_docs(4),      -- Scroll documentation down
    },
    sources = {
        { name = 'nvim_lsp' },                        -- LSP source
        { name = 'buffer' },                          -- Buffer source for current buffer words
        { name = 'path' },                            -- Path completion source
        { name = 'luasnip' },                         -- Snippet source
    },
})


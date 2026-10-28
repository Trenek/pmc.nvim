vim.filetype.add({ extension = { pmc = 'pmc' } })

vim.lsp.enable('pmc_lsp')

vim.api.nvim_create_autocmd('User', {
    pattern = 'TSUpdate',
    callback = function()
        require('nvim-treesitter.parsers').pmc = {
            install_info = {
                url = 'https://github.com/Trenek/tree-sitter-pmc',

                queries = 'queries/pmc',
                branch = 'master',
                generate = true,
                generate_from_json = false
            },
        }
    end,
})

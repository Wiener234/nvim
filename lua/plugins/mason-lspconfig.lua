-- mason-lspconfig
require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = { "lua_ls" }
})
require('mason-lspconfig').setup_handlers({
    function(server_name)
        require('lspconfig')[server_name].setup({})
    end,
    ["jdtls"] = function() end,
})

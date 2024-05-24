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
    -- ["julials"] = function()
    --   require('lspconfig').julials.setup({
    --     on_new_config = function(new_config, _)
    --       local julia = vim.fn.expand('$HOME').. '/.julia/environments/nvim-lspconfig/bin/julia'
    --       if require("lspconifg").util.path.is_file(julia) then
    --         vim.notify("Hello!")
    --         new_config.cmd[1] = julia
    --       end
    --     end
    --   })
    -- end,
})

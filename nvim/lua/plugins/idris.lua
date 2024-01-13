
return {
  {
    "ShinKage/idris2-nvim",
    opts = {
        server = {
            on_attach = function (...)
                vim.cmd [[nnoremap <LocalLeader>c <Cmd>lua require('idris2.code_action').case_split()<CR>]]
                vim.cmd [[nnoremap <LocalLeader>mc <Cmd>lua require('idris2.code_action').make_case()<CR>]]
                vim.cmd [[nnoremap <LocalLeader>mw <Cmd>lua require('idris2.code_action').make_with()<CR>]]
                vim.cmd [[nnoremap <LocalLeader>ml <Cmd>lua require('idris2.code_action').make_lemma()<CR>]]
                vim.cmd [[nnoremap <LocalLeader>a <Cmd>lua require('idris2.code_action').add_clause()<CR>]]
                vim.cmd [[nnoremap <LocalLeader>o <Cmd>lua require('idris2.code_action').expr_search()<CR>]]
                vim.cmd [[nnoremap <LocalLeader>gd <Cmd>lua require('idris2.code_action').generate_def()<CR>]]
                vim.cmd [[nnoremap <LocalLeader>rh <Cmd>lua require('idris2.code_action').refine_hole()<CR>]]

                vim.cmd [[nnoremap <LocalLeader>so <Cmd>lua require('idris2.hover').open_split()<CR>]]
                vim.cmd [[nnoremap <LocalLeader>sc <Cmd>lua require('idris2.hover').close_split()<CR>]]

                vim.cmd [[nnoremap <LocalLeader>mm <Cmd>lua require('idris2.metavars').request_all()<CR>]]
                vim.cmd [[nnoremap <LocalLeader>mn <Cmd>lua require('idris2.metavars').goto_next()<CR>]]
                vim.cmd [[nnoremap <LocalLeader>mp <Cmd>lua require('idris2.metavars').goto_prev()<CR>]]

                vim.cmd [[nnoremap <LocalLeader>br <Cmd>lua require('idris2.browse').browse()<CR>]]

                vim.cmd [[nnoremap <LocalLeader>x <Cmd>lua require('idris2.repl').evaluate()<CR>]]
            end,
        },
        code_action_post_hook = function(_) vim.cmd('silent write') end,
        autostart_semantic = true,
    },
  },
}

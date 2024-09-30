return {
  "lervag/vimtex",
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    -- vim.g.tex_flavor = "latex"
    vim.g.vimtex_view_method = "skim"
    vim.g.vimtex_view_skim_sync = 1
    vim.g.vimtex_view_skim_activate = 1
    vim.keymap.set("n", "<leader>ll", "<cmd>VimtexCompile<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>li", "<cmd>VimtexInfo<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>li", "<cmd>VimtexView<CR>", { noremap = true, silent = true })
  end,
}

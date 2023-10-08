-- Vertical terminal split
vim.api.nvim_set_keymap('n', '<leader>tv', ':botright vsp | terminal<CR>', { noremap = true })


-- Horizontal terminal split at the bottom
vim.api.nvim_set_keymap('n', '<leader>th', ':botright split | terminal<CR>', { noremap = true })




vim.api.nvim_exec([[
  tnoremap <C-x> <C-\><C-n>
]], false)

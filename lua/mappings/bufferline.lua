-- Define a keymapping to switch tabs using the Tab key
vim.api.nvim_set_keymap('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<leader>x', ':bd!<CR>', { noremap = true, silent = true })

--
-- vim.api.nvim_set_keymap('n', '<leader>X', ':tabonly<CR>', { noremap = true, silent = true })

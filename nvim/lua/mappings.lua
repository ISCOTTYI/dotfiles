-- Leader key
vim.g.mapleader = "\\"

-- Function to simplify noremap mapping
local function nrm(mode, keys, mapping, opts)
    opts = opts or {}
    opts.noremap = true
    vim.api.nvim_set_keymap(mode, keys, mapping, opts)
end

-- Insert mode
nrm("i", "jj", "<ESC>") -- exit insert mode

-- Normal mode
nrm("n", "<leader><leader>", "<c-^>") -- Switch buffers
nrm("n", "<leader>q", "gqip") -- Format paragraph
nrm("n", "<TAB>", ":bnext<CR>") -- TAB to move to next buffer
nrm("n", "<S-TAB>", ":bprevious<CR>") -- SHIFT TAB to move to previous buffer
nrm("n", "j", "gj") -- Move lines in warped text
nrm("n", "k", "gk") -- Move lines in warped text

-- Visual mode
nrm("v", "<", "<gv")
nrm("v", ">", ">gv")


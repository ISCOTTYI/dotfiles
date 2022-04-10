-- PLUGIN MAPPINGS ARE FOUND IN THEIR RESPECTIVE SETUP FILE

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true } -- default options
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Leader
map("n", "\\", "<Nop>")
vim.g.mapleader = "\\"

-- Exit INSERT mode with jj
map("i", "jj", "<ESC>")

-- Better buffer switching
map("n", "<TAB>", ":bnext<CR>")
map("n", "<S-TAB>", ":bprevious<CR>")
map("n", "<leader><leader>", "<c-^>")
-- map("n", "<Leader>b", ":buffers<CR>:buffer<Space>") -- Done by telescope

-- Better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Telescope
map("n", "<leader>p", '<cmd>lua require("telescope.builtin").find_files()<cr>')
map("n", "<leader>g", '<cmd>lua require("telescope.builtin").live_grep()<cr>')
map("n", "<leader>b", '<cmd>lua require("telescope.builtin").buffers()<cr>')
-- map("n", "<leader>f", '<cmd>lua require("telescope").extensions.file_browser.file_browser()<CR>')
map("n", "<leader>s", '<cmd>lua require("telescope.builtin").spell_suggest()<cr>')
map("n", "<leader>d", '<cmd>lua require("telescope.builtin").git_status()<cr>')
map("n", "<leader>ca", '<cmd>lua require("telescope.builtin").lsp_code_actions()<cr>')


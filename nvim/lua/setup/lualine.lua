require'lualine'.setup {
  options = {
    icons_enabled = false, -- for icons we need nerdfonts: https://www.nerdfonts.com/ and https://github.com/ryanoasis/vim-devicons/issues/198
    theme = 'auto',
    component_separators = { left = ' ', right = ' '},
    section_separators = { left = ' ', right = ' '},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {"mode"},
    lualine_b = {"branch", "diff"},
    lualine_c = {
        {"filename", file_status = true, path = 1, shorting_target = 40} -- show relativ path
    },
    lualine_x = {
        {"diagnostics", sources = {"nvim_diagnostic"}}, "encoding",
        "fileformat", "filetype"
    },
    lualine_y = {"progress"},
    lualine_z = {"location"}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

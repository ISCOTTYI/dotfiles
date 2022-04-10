local fn = vim.fn

-- Autoinstall packer if not installed to:
--  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        'git', 'clone', '--depth', '1',
        'https://github.com/wbthomason/packer.nvim', install_path
    })
end

-- Automatically do a PackerCompile if plugins.lua has updated
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
]])

-- Returns require call for use in 'config' parameter of packer's use
-- for a given setup file with name 'name'
function get_setup(name)
    return string.format("require('setup/%s')", name)
end

-- ----------------
-- | LOAD PLUGINS |
-- ----------------
vim.cmd([[packadd packer.nvim]])
return require('packer').startup(function(use)
    -- Packer itself
    use({"wbthomason/packer.nvim"})

    -- Statusline plugin
    use({
        "nvim-lualine/lualine.nvim",
        config = get_setup("lualine"),
        event = "VimEnter",
        -- requires = {'kyazdani42/nvim-web-devicons', opt = true}
    })

    -- Base16 colorscheme
    use({"RRethy/nvim-base16", config = get_setup("base16")})
    
    -- LSP
    use({"neovim/nvim-lspconfig"}) -- , config = get_setup("lsp")
    use({
        "williamboman/nvim-lsp-installer",
        config = get_setup("lsp-installer")
    })

    -- Autocompletion
    use({
        "hrsh7th/nvim-cmp",
        config = get_setup("cmp"),
        requires = {
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-cmdline" },
            { "hrsh7th/vim-vsnip" },
            { "hrsh7th/cmp-vsnip" },
            { "hrsh7th/vim-vsnip-integ" }
        }
    })

    -- Treesitter Highlighting
    use({
        "nvim-treesitter/nvim-treesitter",
        config = get_setup("treesitter"),
        run = ":TSUpdate"
    })

    -- Telescope fuzzy finder
    use({
        "nvim-telescope/telescope.nvim",
        config = get_setup("telescope"),
        requires = { "nvim-lua/plenary.nvim" }
    })

    -- Commenting
    use({
        "terrortylor/nvim-comment",
        config = get_setup("comment")
    })

    -- Autopairs
    use({
        "windwp/nvim-autopairs",
        config = get_setup("autopairs")
    })

    -- Git
    use({
        "lewis6991/gitsigns.nvim",
        config = get_setup("gitsigns"),
        requires = { "nvim-lua/plenary.nvim" }
    })

    -- WhichKey
    use({
        "folke/which-key.nvim",
        config = get_setup("whichkey")
    })

    use({
        "lewis6991/spellsitter.nvim",
        config = get_setup("spellsitter")
    })

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
      require('packer').sync()
    end
end)


-- Set the path to your local lazy.nvim repository
local lazypath = "nvim.setup/lazy.nvim"

-- Ensure lazy.nvim is added to the runtime path
vim.opt.rtp:prepend(lazypath)

-- Initialize lazy.nvim and set up plugins
require("lazy").setup({
  spec = {
    -- Add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- Import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded.
    -- Your custom plugins will load during startup.
    lazy = false,
    -- Recommended to leave version=false for now to always use the latest git commit.
    version = false, -- use the latest git commit for plugins
    -- version = "*", -- use the latest stable version for plugins that support semver
  },
  install = {
    colorscheme = { "tokyonight", "habamax" }, -- Install default colorschemes
  },
  checker = {
    enabled = true, -- Check for plugin updates periodically
    notify = false, -- Disable notifications for updates
  }, -- Automatically check for plugin updates
  performance = {
    rtp = {
      -- Disable some runtime plugins to improve performance
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

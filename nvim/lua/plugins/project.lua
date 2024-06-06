return {
  "coffebar/neovim-project",
  opts = {
    projects = { -- define project roots
      "~/code/*",
      "~/.config/*",
      "~/code/zendesk/*",
      "~/code/personal/*",
    },
  },
  init = function()
    -- enable saving the state of plugins in the session
    vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
    { "Shatur/neovim-session-manager" },
  },
  lazy = false,
  priority = 100,
  config = function(_, opts)
    require("neovim-project").setup(opts)
    vim.keymap.set("n", "<leader>pd", "<Cmd>:Telescope neovim-project discover<CR>", { desc = "[D]iscover"})
    vim.keymap.set("n", "<leader>pr", "<Cmd>:Telescope neovim-project history<CR>", { desc = "[R]ecent"})
  end
}

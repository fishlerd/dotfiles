return {
  {
    "siawkz/nvim-cheatsh",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    opts = {
      -- leave it empty to use the default settings
      cheatsh_url = "https://cht.sh/", -- URL of the cheat.sh instance to use, support self-hosted instances
      position = "right", -- position of the window can be: bottom, top, left, right
      height = 20, -- height of the cheat when position is top or bottom
      width = 100, -- width of the cheat when position is left or right
    },
  },
}

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("fishvim")
require("notify").setup({
  stages = "fade_in_slide_out",
  timeout = 5000,
  top_down = false,
  background_colour = "#000000",
  -- compact = true,
  text_colour = "#dcdccc",
  icons = {
    ERROR = "",
    WARN = "",
    INFO = "",
    DEBUG = "",
    TRACE = "✎",
  },
  level = "info", -- Set the default level
  max_width = 80, -- Set the maximum width of the notification
  max_height = 30, -- Set the maximum height of the notification
  time_formats = { -- Set the time formats
    past = "%s ago",
    future = "in %s",
    soon = "soon",
    now = "now",
  },
  on_open = function() end, -- Set the function to be called when a notification is opened
  on_close = function() end, -- Set the function to be called when a notification is closed
  render = "default", -- Set the render mode
  -- render = "minimal",
  -- render = "compact",
  minimum_width = 20, -- Set the minimum width of the notification
  fps = 30, -- Set the frames per second for the notification animation
})

-- " Clojure dap configuration
-- lua << EOF
local dap = require("dap")
dap.configurations.clojure = {
  {
    type = "clojure",
    request = "launch",
    name = "Launch file",
    replPort = 5555, -- update this to your REPL port
    dap = {
      type = "clojure",
      request = "launch",
      replPort = 5555, -- update this to your REPL port
    },
  },
}

-- vim.g.rainbow_active = 1
-- colorscheme = "night-owl"
-- EOF

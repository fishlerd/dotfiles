-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("fishvim")
require("notify").setup({
  stages = "fade_in_slide_out",
  timeout = 5000,
  top_down = false,
  position = "bottom_right",
  background_colour = "#000000",
  text_colour = "#dcdccc",
  icons = {
    ERROR = "",
    WARN = "",
    INFO = "",
    DEBUG = "",
    TRACE = "✎",
  },
})

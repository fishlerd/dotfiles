return {
  "Vigemus/iron.nvim",
  config = function()
    local iron = require("iron.core")

    iron.setup({
      config = {
        -- Whether a repl should be discarded or not
        scratch_repl = true,
        -- Your repl definitions come here
        repl_definition = {
          sh = {
            command = { "zsh" },
          },
          perl = {
            command = { "perl" },
          },
          raku = {
            command = { "raku" },
          },
          python = {
            command = { "python3" },
          },
          -- Add other REPL definitions here
          matlab = {
            command = { "octave" },
          },
        },
        -- How the repl window will be displayed
        -- See below for more information
        repl_open_cmd = require("iron.view").split.vertical.botright(0.4),
      },
      -- Iron doesn't set keymaps by default anymore. Set them here
      keymaps = {
        send_motion = "<space>ic",
        visual_send = "<space>ic",
        send_file = "<space>if",
        send_line = "<space>il",
        send_mark = "<space>im",
        mark_motion = "<space>mc",
        mark_visual = "<space>mc",
        remove_mark = "<space>md",
        cr = "<space>s<cr>",
        interrupt = "<space>s<space>",
        exit = "<space>iq",
        clear = "<space>il",
      },
      -- If the highlight is on, you can change how it looks
      -- For the available options, check nvim_set_hl
      highlight = {
        italic = true,
      },
      ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
    })
  end,
}

return {
  "dundalek/parpar.nvim",
  dependencies = { "gpanders/nvim-parinfer", "julienvincent/nvim-paredit" },
  config = function()
    local paredit = require("nvim-paredit")
    require("parpar").setup({
      paredit = {
        -- pass any nvim-paredit options here
        keys = {
          -- custom bindings are automatically wrapped
          ["<A-H>"] = { paredit.api.slurp_backwards, "Slurp backwards" },
          ["<A-J>"] = { paredit.api.barf_backwards, "Barf backwards" },
          ["<A-K>"] = { paredit.api.barf_forwards, "Barf forwards" },
          ["<A-L>"] = { paredit.api.slurp_forwards, "Slurp forwards" },
          ["<localleader>w"] = {
            function()
              -- place cursor and set mode to `insert`
              paredit.cursor.place_cursor(
                -- wrap element under cursor with `( ` and `)`
                paredit.wrap.wrap_element_under_cursor("( ", ")"),
                -- cursor placement opts
                { placement = "inner_start", mode = "insert" }
              )
            end,
            "Wrap element insert head",
          },

          ["<localleader>W"] = {
            function()
              paredit.cursor.place_cursor(
                paredit.wrap.wrap_element_under_cursor("(", ")"),
                { placement = "inner_end", mode = "insert" }
              )
            end,
            "Wrap element insert tail",
          },

          -- same as above but for enclosing form
          ["<localleader>i"] = {
            function()
              paredit.cursor.place_cursor(
                paredit.wrap.wrap_enclosing_form_under_cursor("( ", ")"),
                { placement = "inner_start", mode = "insert" }
              )
            end,
            "Wrap form insert head",
          },

          ["<localleader>I"] = {
            function()
              paredit.cursor.place_cursor(
                paredit.wrap.wrap_enclosing_form_under_cursor("(", ")"),
                { placement = "inner_end", mode = "insert" }
              )
            end,
            "Wrap form insert tail",
          },
        },
      },
    })
  end,
}

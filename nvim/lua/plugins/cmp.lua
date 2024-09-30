return {
  {
    "hrsh7th/nvim-cmp",
    init = function()
      vim.g.cmp_disabled = false
    end,
    opts = function(_, opts)
      opts.enabled = function()
        if vim.g.cmp_disabled == true then
          return false
        end
        return not disabled
      end

      -- Add key mappings for Tab, Shift-Tab, Down, and Up
      local cmp = require("cmp")
      opts.mapping = {
        ["<Tab>"] = cmp.mapping.confirm({ select = true }),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<Down>"] = cmp.mapping.select_next_item(),
        ["<Up>"] = cmp.mapping.select_prev_item(),
      }
    end,
    keys = {
      {
        "<leader>ua",
        function()
          vim.g.cmp_disabled = not vim.g.cmp_disabled
          local msg = ""
          if vim.g.cmp_disabled == true then
            msg = "Autocompletion (cmp) disabled"
          else
            msg = "Autocompletion (cmp) enabled"
          end
          vim.notify(msg, vim.log.levels.INFO)
        end,
        noremap = true,
        silent = true,
        desc = "toggle autocompletion",
      },
    },
  },
}

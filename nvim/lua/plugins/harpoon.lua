return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  opts = {
    settings = {
      save_on_toggle = true,
      sync_on_ui_close = true,
      key = function()
        return vim.loop.cwd() -- or customize per project
      end,
    },
  },
  config = function(_, opts)
    local harpoon = require("harpoon")
    harpoon:setup(opts)

    -- Custom keymaps
    -- vim.keymap.set("n", "<leader>ha", function()
    --   harpoon:list():append()
    -- end)
    -- vim.keymap.set("n", "<leader>hh", function()
    --   harpoon.ui:toggle_quick_menu(harpoon:list())
    -- end)
    for i = 1, 9 do
      vim.keymap.set(
        "n",
        "<leader>" .. i,
        function()
          require("harpoon"):list():select(i)
          -- vim.notify("Harpoon: jumped to file " .. i, vim.log.levels.INFO, { title = "Harpoon" })
        end
        --, { desc = "Harpoon to file " })
      )
    end
    -- for i = 1, 9 do
    --   vim.keymap.set("n", "<leader>" .. i, function()
    --     harpoon:list():select(i)
    --   end)
    -- end
  end,
}

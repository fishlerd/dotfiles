return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "HiPhish/nvim-ts-rainbow2" },
  opts = function(_, opts)
    opts.rainbow = {
      enable = true,
      disable = { "jsx", "cpp" },
      query = "rainbow-parens",
      strategy = require("ts-rainbow").strategy.global,
    }
  end,
}

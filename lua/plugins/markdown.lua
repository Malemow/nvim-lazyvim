return {
  "MeanderingProgrammer/render-markdown.nvim",
  -- dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
  dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" }, -- if you use standalone mini plugins
  -- dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
  opts = function(_, opts)
    opts.code = {
      width = "block",
      left_pad = 2,
      right_pad = 4,
      min_width = 45,
      position = "right",
    }

    opts.pipe_table = {
      preset = "round",
    }
  end,
}

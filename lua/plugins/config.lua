return {
  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = true,
  },
  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
    keys = {
      { "<leader>do", "<cmd>DiffviewOpen<CR>", desc = "開啟 Diffview" },
      { "<leader>dc", "<cmd>DiffviewClose<CR>", desc = "關閉 Diffview" },
      { "<leader>df", "<cmd>DiffviewToggleFiles<CR>", desc = "切換檔案面板" },
      { "<leader>dg", "<cmd>DiffviewFocusFiles<CR>", desc = "聚焦檔案面板" },
    },
    opts = {
      use_icons = true, -- 如果需要啟用圖示
      view = {
        -- 預設檢視配置，可以調整 split 方式
        merge_tool = {
          layout = "diff3_mixed",
        },
      },
    },
  },
  {
    "nvim-tree/nvim-web-devicons",
    opts = { default = true }, -- 啟用預設圖示
  },
}

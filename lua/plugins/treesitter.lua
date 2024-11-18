return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "cmake",
        "cpp",
        "css",
        "fish",
        "gitignore", -- 確保 gitignore 支持的解析器已安裝
        "go",
        "graphql",
        "http", -- 如果不支持，可以移除
        "java",
        "php",
        "rust",
        "scss",
        "sql",
        "svelte",
        "vue",
        "javascript",
        "typescript",
      },
      highlight = { enable = true }, -- 啟用語法高亮
      indent = { enable = true }, -- 啟用自動縮進
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX 文件支持
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}

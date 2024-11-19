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
        "gitignore",
        "go",
        "graphql",
        "http",
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

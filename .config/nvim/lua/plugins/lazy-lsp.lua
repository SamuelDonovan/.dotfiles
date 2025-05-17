return {
  "dundalek/lazy-lsp.nvim",
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    require("lazy-lsp").setup {
        -- By default all available servers are set up. Exclude unwanted or misbehaving servers.
      excluded_servers = {
        "ccls", "zk", "hyprls",
      },
      -- Alternatively specify preferred servers for a filetype (others will be ignored).
      preferred_servers = {
        markdown = {},
        python = {
            "pyright",
            "jedi-langauge-server"
        },
        json = { },
        toml = { },
        css = { },
      },
    }
  end
}

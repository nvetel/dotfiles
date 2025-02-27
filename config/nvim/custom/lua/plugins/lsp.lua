return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
   -- ---@class PluginLspOpts
   -- opts = {
   --   -- LSP Server Settings
   --   ---@type lspconfig.options
   --   servers = {
   --     lua_ls = {
   --       -- mason = false, -- set to false if you don't want this server to be installed with mason
   --       -- Use this to add any additional keymaps
   --       -- for specific lsp servers
   --       ---@type LazyKeysSpec[]
   --       -- keys = {},
   --       settings = {
   --         Lua = {
   --           workspace = {
   --             checkThirdParty = false,
   --           },
   --           completion = {
   --             callSnippet = "Replace",
   --           },
   --         },
   --       },
   --     },
   --   },
   --   -- you can do any additional lsp server setup here
   --   -- return true if you don't want this server to be setup with lspconfig
   --   ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
   --   setup = {
   --     -- example to setup with typescript.nvim
   --     -- tsserver = function(_, opts)
   --     --   require("typescript").setup({ server = opts })
   --     --   return true
   --     -- end,
   --     -- Specify * to use this function as a fallback for any server
   --     -- ["*"] = function(server, opts) end,
   --   },
   -- },
  },
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"saadparwaiz1/cmp_luasnip",
	{
		"L3MON4D3/LuaSnip",
		dependencies = { "rafamadriz/friendly-snippets" },
	},
	"williamboman/mason.nvim",
  "hrsh7th/cmp-nvim-lsp-signature-help",
}

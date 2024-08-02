return {
  {
    "folke/noice.nvim",
    opts = {
      routes = {
        -- I want the vim cmds like ls not to vanish not to be in a little box in the corner.
        {
          filter = { cmdline = true },
          view = "popup"
        },
      },
    }
  }
}

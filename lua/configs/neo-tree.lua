require("neo-tree").setup({
  close_if_last_window = true,
  enable_diagnostics = false,
  source_selector = {
    winbar = true,
  },
  filesystem = {
    follow_current_file = true,
    hijack_netrw_behavior = "open_current",
  },
})

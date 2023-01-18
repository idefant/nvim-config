require("bufferline").setup{
  options = {
    offsets = {
      { filetype = "NvimTree", text = "File Explorer", padding = 1 },
      { filetype = "vista", text = "Tags", padding = 1 },
      { filetype = "vista_markdown", text = "TOC", padding = 1 },
    },
    separator_style = "slant",
  }
}

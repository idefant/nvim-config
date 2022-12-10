local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'

dashboard.section.header.val = {
  "                                                       ",
  "                                                       ",
  " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
  " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
  " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
  " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
  " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
  " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
  "                                                       ",
}

dashboard.section.buttons.val = {
  dashboard.button( "w", "  Knowledge Base" , ":VimwikiIndex<CR>"),
  dashboard.button( "n", "  Notes" , ":VimwikiIndex 2<CR>"),
  dashboard.button( "c", "  Open Nvim config" , ":call OpenNeovimConfig()<CR>"),
  dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
  dashboard.button( "ps", "累 Sync Packer" , ":PackerSync<CR>"),
  dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
}

local handle = io.popen('fortune')
local fortune = handle:read("*a")

handle:close()
dashboard.section.footer.val = fortune
dashboard.config.opts.noautocmd = false
alpha.setup(dashboard.config)

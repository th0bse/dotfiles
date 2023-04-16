local copilot = require("copilot")
local copilot_cmp = require("copilot_cmp")

copilot.setup({
  suggestion = { enabled = false },
  panel = { enabled = false },
  filetypes = {
    yaml = false,
    markdown = false,
    help = false,
    gitcommit = false,
    gitrebase = false,
    hgcommit = false,
    svn = false,
    cvs = false,
    ["."] = false,
  },
  copilot_node_command = 'node',
})

copilot_cmp.setup({})

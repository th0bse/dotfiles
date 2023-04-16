local lualine = require("lualine")

local diagnostics = {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    sections = { "error", "warn" },
    symbols = { error = " ", warn = " " },
    colored = true,
    always_visible = true,
}

local diff = {
    "diff",
    colored = true,
    symbols = { added = " ", modified = " ", removed = " " },
}

local filetype = {
    "filetype",
    icons_enabled = true,
}

local location = {
    "location",
    padding = 1,
}

lualine.setup {
    options = {
        globalstatus = true,
        icons_enabled = true,
        theme = "gruvbox",
        disabled_filetypes = { "alpha", "dashbpard" },
        always_divide_middle = true,
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { diagnostics },
        lualine_x = { diff,  "encoding", filetype },
        lualine_y = { location },
        lualine_z = { "progress" }
    },
}


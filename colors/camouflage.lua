-- Camouflage colorscheme for Neovim
-- Converted from Vim script to Lua

local M = {}

function M.setup()
  -- Reset colors
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  -- Set background and colorscheme name
  vim.o.background = "dark"
  vim.g.colors_name = "camouflage"

  local highlights = {
    -- Version >= 700 highlights
    CursorLine = { bg = "#100A09", cterm = { none = true }, ctermbg = "darkgray" },
    CursorColumn = { bg = "#100A09", cterm = { none = true }, ctermbg = "darkgray" },
    MatchParen = { bg = "#505050", bold = true },
    Pmenu = { fg = "yellowgreen", bg = "#323232" },
    PmenuSel = { fg = "yellowgreen", bg = "darkred" },

    -- Background and menu colors
    Cursor = { fg = "NONE", bg = "#FFFFFF" },
    Normal = { fg = "#D5E285", bg = "#070100", ctermfg = "red" },
    NonText = { fg = "#4A4A59" },
    StatusLine = { fg = "#00D2D2", bg = "#38290B", ctermfg = "cyan", italic = true },
    StatusLineNC = { fg = "#00D2D2", bg = "#2F2928", ctermfg = "cyan" },
    VertSplit = { fg = "#00D2D2", bg = "#201A19", ctermfg = "cyan" },
    Folded = { fg = "#00D2D2", bg = "#070100", ctermfg = "cyan" },
    FoldColumn = { fg = "#00D2D2", bg = "#070100", ctermfg = "cyan" },
    Title = { fg = "#FFCA39", bg = "NONE", bold = true },
    Visual = { bg = "#313131", ctermbg = "darkgray" },
    SpecialKey = { fg = "#4A4A59", ctermfg = "grey" },
    Search = {
      fg = "NONE",
      bg = "NONE",
      underline = true,
      ctermfg = "NONE",
      ctermbg = "NONE",
      cterm = { underline = true },
    },
    Underline = {},

    -- Syntax highlighting
    Comment = { fg = "darkgray", ctermfg = "darkgray" },
    Constant = { fg = "#A5A200" },
    Number = { fg = "#64CC8A", ctermfg = "lightgreen" },
    Identifier = { fg = "#96B58E", ctermfg = "grey" },
    Statement = { fg = "#815900", ctermfg = "brown" },
    Operator = { fg = "#00D2D2", ctermfg = "cyan" },
    Function = { fg = "#408080", ctermfg = "darkcyan" },
    Special = { fg = "#A52B34", ctermfg = "darkred" },
    PreProc = { fg = "#C94000", ctermfg = "brown" },
    Keyword = { fg = "#009664", ctermfg = "darkcyan" },
    String = { fg = "#4BA5B3", ctermfg = "lightblue" },
    Type = { fg = "#A5A300", ctermfg = "darkyellow" },
    Delimiter = { fg = "#408080" },

    -- TreeSitter highlights
    ["@variable"] = { fg = "#D5E285", ctermfg = "grey" },

    -- Diff colors
    DiffAdd = { fg = "NONE", bg = "#002200", ctermbg = "darkgreen" },
    DiffDelete = { fg = "NONE", bg = "#220000", ctermbg = "darkred" },
    DiffChange = { fg = "NONE", bg = "#222222", ctermbg = "darkgray" },
    DiffText = { fg = "NONE", bg = "#31383F", ctermbg = "darkblue" },

    -- Clear SignColumn for gitgutter
    SignColumn = { fg = "NONE", bg = "NONE" },
  }

  -- Apply all highlights
  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- Handle links separately
  local links = {
    -- Links from original file
    ["Normal"] = "@variable",
    ["LineNr"] = "PeacockFg",
    ["@keyword.import"] = "Special",
    ["@keyword.export"] = "Special",
    ["@type.builtin"] = "Type",
    ["@punctuation.delimiter"] = "Normal",
    ["@punctuation.bracket"] = "Delimiter",
    ["@variable.builtin"] = "Type",
    ["jsObjectKey"] = "Identifier",
    ["typescriptObjectLabel"] = "Identifier",
    ["TelescopeNormal"] = "Normal",
    ["@variable"] = "Identifier",
  }

  -- Apply links
  for from, to in pairs(links) do
    vim.api.nvim_set_hl(0, from, { link = to })
  end
end

-- Auto-setup when required
M.setup()

return M

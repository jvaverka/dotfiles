local M = {}

M.config = function ()

  -- Additional keybindings
  -- [view all the defaults by pressing <leader>Lk]
  -- =========================================
  lvim.keys.normal_mode["Y"] = "y$"       -- yank to end of line
  lvim.keys.normal_mode["n"] = "nzzzv"    -- keep cursor centered
  lvim.keys.normal_mode["N"] = "Nzzzv"    -- keep cursor centered
  lvim.keys.normal_mode["J"] = "mzJ`z"    -- keep cursor centered
  lvim.keys.insert_mode[","] = ",<c-g>u"  -- undo break points
  lvim.keys.insert_mode["."] = ".<c-g>u"  -- undo break points
  lvim.keys.insert_mode["!"] = "!<c-g>u"  -- undo break points
  lvim.keys.insert_mode["?"] = "?<c-g>u"  -- undo break points
  lvim.keys.insert_mode["<c-s>"] = "<cmd>lua vim.lsp.buf.signature_help()<cr>"
  lvim.keys.normal_mode["gv"] = "<cmd>vsplit | lua vim.lsp.buf.definition()<cr>"

  -- WhichKey keybindings
  -- =========================================
  lvim.builtin.which_key.mappings["]"] = { "<cmd>ToggleTerm<cr>", "Terminal" }
  lvim.builtin.which_key.mappings["0"] = { "<cmd>Telescope fd hidden=true search_dirs={'~/.dotfiles/'}<cr>", "DotFiles"}
  lvim.builtin.which_key.mappings["1"] = { "<cmd>Telescope fd hidden=false search_dirs={'~/Repos/school/'}<cr>", "Masters"}
  lvim.builtin.which_key.mappings["2"] = { "<cmd>Telescope fd hidden=false search_dirs={'~/Repos/blog/'}<cr>", "JakeV.xyz"}
  if lvim.extras.matchup.active then
    lvim.builtin.which_key.mappings["?"] = { "<cmd>MatchupWhereAmI??<cr>", "Where am I?" }
  end
  if lvim.extras.hop.active then
    lvim.builtin.which_key.mappings["H"] = {
      name = "+Hop",
      b = {"<cmd>HopChar2<cr>", "Bigram"},
      c = {"<cmd>HopChar1<cr>", "Character"},
      h = {"<cmd>lua require'hop'.hint_words()<cr>", "Hint"},
      l = {"<cmd>HopLine<cr>", "Line"},
      p = {"<cmd>HopPattern<cr>", "Pattern"},
      w = {"<cmd>HopWord<cr>", "Word"},
    }
  end
  if lvim.extras.julia_vim.active then
    lvim.builtin.which_key.mappings["j"] = {
      name = "+Julia Vim",
      a = {"<cmd>call julia#function_block2assign()<cr>", "Block to Assign"},
      b = {"<cmd>call julia#function_assign2block()<cr>", "Assign to Block"},
      f = {"<cmd>call julia#toggle_function_blockassign()<cr>", "Function Toggle"},
      h = {"<plug>(JuliaDocPrompt)", "Help"},
      w = {"<cmd>call julia_blocks#whereami()<cr>", "Where am I?"}
    }
  end
  if lvim.extras.pomodoro.active then
    lvim.builtin.which_key.mappings["m"] = {
      name = "+Pomodoro",
      b = { "<cmd>PomodoroStart<cr>", "Begin"},
      e = { "<cmd>PomodoroStop<cr>", "End"},
      s = { "<cmd>PomodoroStatus<cr>", "Status"},
    }
  end
  if lvim.extras.symbols_outline.active then
    lvim.builtin.which_key.mappings["o"] = { "<cmd>SymbolsOutline<cr>", "Symbol Outline" }
  end
  if lvim.extras.trouble.active and lvim.extras.todo_comments.active then
    lvim.builtin.which_key.mappings["t"] = {
      name = "+Trouble",
      r = { "<cmd>Trouble lsp_references<cr>", "References" },
      f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
      d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
      q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
      l = { "<cmd>Trouble loclist<cr>", "LocationList" },
      t = { "<cmd>TodoLocList<cr>", "Todo" },
      w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
    }
  end
  lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
  if lvim.extras.persistence.active then
    lvim.builtin.which_key.mappings["Q"]= {
      name = "+Quit",
      d = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
      l = { "<cmd>lua require('persistence').load(last=true)<cr>", "Restore last session" },
      s = { "<cmd>lua require('persistence').load()<cr>", "Restore for current dir" },
    }
  end
  if lvim.extras.spectre.active then
    lvim.builtin.which_key.mappings["R"] = {
      name = "Replace",
      p = { "<cmd>lua require('spectre').open()<cr>", "Project" },
      w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
      f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Current Buffer" },
    }
  end
  if lvim.extras.zen_mode.active then
    lvim.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<cr>", "Zen" }
  end
end

return M

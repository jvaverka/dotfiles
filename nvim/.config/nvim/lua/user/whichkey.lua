local M = {}

M.config = function ()
	local status_ok, wk = pcall(require, "which-key")
	if not status_ok then
		return
	end
	local options = {
		mode = "n", -- NORMAL mode
		prefix = "<leader>", -- prepended to every mapping
		buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
		silent = true, -- use `silent` when creating keymaps
		noremap = true, -- use `noremap` when creating keymaps
		nowait = false, -- use `nowait` when creating keymaps
	}
	wk.register({
		[';'] = { "<cmd>Alpha<cr>", "Dashboard" },
		e = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
		l = { ":lua require('nabla').popup()<cr>", "LaTeX" },
		o = { "<cmd>SymbolsOutline<cr>", "Outline" },
		T = { "<cmd>TroubleToggle<cr>", "Trouble" },
    q = { ":q<cr>", "Quit" },
    w = { ":w<cr>", "Save" },
		z = { "<cmd>ZenMode<cr>", "Zen" },
		f = {
      name = "+Find",
			f = { "<cmd>Telescope find_files<cr>", "Find File" },
			g = { "<cmd>Telescope live_grep<cr>", "Find Text" },
			b = { "<cmd>Telescope buffers<cr>", "Find in Buffer" },
			h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
		},
		h = {
			name = '+Hop',
			b = { "<cmd>HopChar2<cr>", "Bigram"},
			c = { "<cmd>HopChar1<cr>", "Character"},
			h = { "<cmd>lua require'hop'.hint_words()<cr>", "Hint"},
			l = { "<cmd>HopLine<cr>", "Line"},
			p = { "<cmd>HopPattern<cr>", "Pattern"},
			w = { "<cmd>HopWord<cr>", "Word"},
		},
    p = {
      name = "+Packer",
      c = { "<cmd>PackerCompile<cr>", "Compile" },
      i = { "<cmd>PackerInstall<cr>", "Install" },
      s = { "<cmd>PackerStatus<cr>", "Status" },
      S = { "<cmd>PackerSync<cr>", "Sync" },
      u = { "<cmd>PackerUpdate<cr>", "Update" },
    },
    Q = {
      name = "+Session",
      d = { "<cmd>lua require('persistence').load()<cr>", "Directory"},
      l = { "<cmd>lua require('persistence').load({ last=true })<cr>", "Last"},
      s = { "<cmd>lua require('persistence').stop()<cr>", "Stop"},
    }
	}, options)
end

return M

local M = {}

M.config = function ()
	local alpha_ok, alpha = pcall(require, "alpha")
	if not alpha_ok then
		return
	end
	local dashboard_ok, dashboard = pcall(require, "alpha.themes.dashboard")
	if not dashboard_ok then
		return
	end

	local neovim = {
    [[                                                     ]],
    [[  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
    [[  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
    [[  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
    [[  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
    [[  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
    [[  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
    [[                                                     ]],
	}

	local universe = {
    [[                                                    ]],
    -- [[             To the mind that is still,             ]],
    -- [[           the whole universe surrenders.           ]],
    [[                                                    ]],
    [[ 🌞      🌎      🌚      🚀      🌟      🪐      ☄️ ]],
	}

	local yogi = {
    [[                         🧘                         ]],
	}

  function TableConcat(t1,t2,t3)
     for i=1,#t2 do
        t1[#t1+1] = t2[i]
     end
     for i=1,#t3 do
        t1[#t1+1] = t3[i]
     end
     return t1
  end

  local fortune_universe = TableConcat(universe, require'alpha.fortune'(), yogi)

	dashboard.section.header.val = fortune_universe

	dashboard.section.buttons.val = {
		dashboard.button("b", "🔖 -> Bookmarks", ":lua require('telescope.builtin').marks()<cr>"),
		dashboard.button("w", "🔗 -> Web Sites", ":Telescope bookmarks<cr>"),
		dashboard.button("s", "🔁 -> Session", ":lua require('persistence').load({ last = true })<cr>"),
		dashboard.button("e", "💡 -> New file", ":enew <bar> startinsert <cr>"),
		dashboard.button("c", "🧩 -> Edit Config", ":e $MYVIMRC | :cd %:p:h <cr>"),
		dashboard.button("h", "🏠 -> Find in Home", ":lua require('telescope.builtin').find_files({ search_dirs={'~/.config','~/Documents/Powershell'}, hidden=true })<cr>"),
		dashboard.button("r", "🚀 -> Find in Repo", ":lua require('telescope.builtin').find_files({ search_dirs={'~/source/repos'}, hidden=true })<cr>"),
		dashboard.button("o", "🕖 -> Find recent", ":lua require('telescope.builtin').oldfiles()<cr>"),
		dashboard.button("q", "👋 -> Quit neovim", ":qa<cr>"),
	}

  -- dashboard.section.footer.val = require'alpha.fortune'()

	alpha.setup(dashboard.opts)
end

return M

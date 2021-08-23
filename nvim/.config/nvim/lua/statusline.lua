-- Start by defining a table for every mode
local mode_map = {
	['n'] = 'normal ',
	['no'] = 'n·operator pending ',
	['v'] = 'visual ',
	['V'] = 'v·line ',
	[''] = 'v·block ',
	['s'] = 'select ',
	['S'] = 's·line ',
	[''] = 's·block ',
	['i'] = 'insert ',
	['R'] = 'replace ',
	['Rv'] = 'v·replace ',
	['c'] = 'command ',
	['cv'] = 'vim ex ',
	['ce'] = 'ex ',
	['r'] = 'prompt ',
	['rm'] = 'more ',
	['r?'] = 'confirm ',
	['!'] = 'shell ',
	['t'] = 'terminal '
}
-- get current mode from `vim.api.nvim_get_mode()`
-- and map it to our desired text
local function mode()
	local m = vim.api.nvim_get_mode().mode
	if mode_map[m] == nil then return m end
	return mode_map[m]
end
-- set up your highlights
vim.api.nvim_exec(
[[
  hi PrimaryBlock   ctermfg=06 ctermbg=00
  hi SecondaryBlock ctermfg=08 ctermbg=00
  hi Blanks   ctermfg=07 ctermbg=00
]], false)
-- create a new table to represent the entire statusline itself
-- you can add any other functions you want
-- consult `:h 'statusline'` for more
local stl = {
  '%#PrimaryBlock#',
  mode(),
  '%#SecondaryBlock#',
  '%#Blanks#',
  '%f',
  '%m',
  '%=',
  '%#SecondaryBlock#',
  '%l,%c ',
  '%#PrimaryBlock#',
  '%{&filetype}',
}
-- set your statusline
vim.o.statusline = table.concat(stl)

local M = {}

M.config = function ()
	local telescope_ok, telescope = pcall(require, "telescope")
	if not telescope_ok then
		return
	end
	telescope.load_extension('bookmarks')
	telescope.setup {
		extensions = {
			bookmarks = {
				-- Available: 'brave', 'buku', 'chrome', 'chrome_beta', 'edge', 'safari', 'firefox', 'vivaldi'
				selected_browser = 'brave',

				-- Either provide a shell command to open the URL
				url_open_command = 'start C:\\Users\\jakev\\AppData\\Local\\min\\min.exe',

				-- Or provide the plugin name which is already installed
				-- Available: 'vim_external', 'open_browser'
				url_open_plugin = nil,

				-- Show the full path to the bookmark instead of just the bookmark name
				full_path = true,

				-- Provide a custom profile name for Firefox
				firefox_profile_name = nil,
			},
		}
	}
end

return M

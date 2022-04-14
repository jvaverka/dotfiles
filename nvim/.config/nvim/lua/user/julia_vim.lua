-- Unicode
-- =========================================
vim.g.latex_to_unicode_file_types = {"julia", "markdown"}
vim.g.latex_to_unicode_auto = false
-- fix freeze when tab with no text
vim.g.latex_to_unicode_tab = "off"
vim.g.latex_to_unicode_keymap = 1

-- Spellcheck
-- =========================================
vim.g.julia_spellcheck_docstrings = 1
vim.g.julia_spellcheck_strings = 1
vim.g.julia_spellcheck_comments = 1

-- Highlight
-- =========================================
vim.g.julia_highlight_operators = 1

-- Indent
-- =========================================
vim.g.julia_indent_align_import = 1
vim.g.julia_indent_align_brackets = 1
vim.g.julia_indent_align_funcargs = 1

-- Mappings
-- =========================================
-- vim.g.julia_blocks = 1
vim.g.julia_blocks_mappings = {
	move_n = "]n",
	move_N = "]e",
	move_p = "[n",
	move_P = "[e",
	moveblock_n = "]]",
	moveblock_N = "][",
	moveblock_p = "[[",
	moveblock_P = "[]",
	select_a = "an",
	select_i = "in",
	whereami = "<space>jw",
}

-- return {
-- 	{
-- 		"lervag/vimtex",
-- 		lazy = false, -- we don't want to lazy load VimTeX
-- 		-- tag = "v2.15", -- uncomment to pin to a specific release
-- 		init = function()
-- 			-- VimTeX configuration goes here, e.g.
-- 			vim.g.vimtex_view_method = "zathura"
-- 		end,
-- 	},
--

return {
	{
		"lervag/vimtex",
		lazy = false, -- lazy-loading will disable inverse search
		config = function()
			vim.api.nvim_create_autocmd({ "FileType" }, {
				group = vim.api.nvim_create_augroup("lazyvim_vimtex_conceal", { clear = true }),
				pattern = { "bib", "tex" },
				callback = function()
					vim.wo.conceallevel = 0
					vim.wo.foldmethod = "expr" -- Use expr fold method
					vim.wo.foldexpr = "vimtex#fold#level(v:lnum)" -- VimTeX folding expression
				end,
			})

			vim.g.vimtex_fold_enabled = 1 -- Enable VimTeX folding
			vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
			vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"

			vim.g.vimtex_view_method = "zathura" -- Viewer configuration
			vim.g.vimtex_view_skim_sync = 1
			vim.g.vimtex_view_skim_activate = 1
			vim.g.vimtex_view_skim_reading_bar = 1

			vim.g.vimtex_compiler_latexmk = {
				aux_dir = "./aux",
				out_dir = "./out",
			}
		end,
	},
}

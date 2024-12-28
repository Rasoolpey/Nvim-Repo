vim.keymap.set("n", "<leader>ip", "i![](Media/)<ESC>F(a", { desc = "Insert image template" })
vim.opt.spelllang = "en_us"
vim.opt.spell = true
return {
	{
		"epwalsh/obsidian.nvim",
		version = "*",
		lazy = false,
		priority = 50,
		ft = "markdown",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
		opts = {
			workspaces = {
				{
					name = "Obsidian",
					path = "/home/pvm8318/Documents/Obsidian",
				},
			},
			notes_subdir = "notes", -- We don't want to force notes into a subdirectory
			new_notes_location = "current_dir", -- This ensures notes are created in the current directory
			completion = {
				nvim_cmp = false,
			},
			-- Modify the note_id_func to maintain directory structure
			-- note_path_func = function(spec)
			-- 	-- Get the directory of the current buffer
			-- 	local current_buf = vim.api.nvim_get_current_buf()
			-- 	local current_file = vim.api.nvim_buf_get_name(current_buf)
			-- 	local current_dir = vim.fn.fnamemodify(current_file, ":h")
			-- 	-- If we're not in a file, use the current working directory
			-- 	if current_file == "" then
			-- 		current_dir = vim.fn.getcwd()
			-- 	end
			-- 	-- Create the path in the current directory
			-- 	return current_dir .. "/" .. spec.id .. ".md"
			-- end,
			note_id_func = function(title)
				-- Format: YYYY-MM-DD-title
				local date = os.date("%Y-%m-%d")
				if title ~= nil then
					-- If title is given, transform it into valid file name
					return title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
				else
					-- If no title is given, just use the date and a random string
					local random_suffix = ""
					for _ = 1, 4 do
						random_suffix = random_suffix .. string.char(math.random(65, 90))
					end
					return date .. "-note-" .. random_suffix:lower()
				end
			end,
			mappings = {
				["gf"] = {
					action = function()
						vim.opt_local.modifiable = true
						return require("obsidian").util.gf_passthrough()
					end,
					opts = { noremap = false, expr = true, buffer = true },
				},
				["<CR>"] = {
					action = function()
						vim.opt_local.modifiable = true
						return require("obsidian").util.smart_action()
					end,
					opts = { buffer = true },
				},
			},
			ui = {
				enable = true,
			},
		},
		config = function(_, opts)
			require("obsidian").setup(opts)
			vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
				pattern = "/home/pvm8318/Documents/Obsidian/*.md",
				callback = function()
					vim.opt_local.modifiable = true
					vim.opt_local.readonly = false
				end,
			})

			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "/home/pvm8318/Documents/Obsidian/*.md",
				callback = function()
					vim.opt_local.modifiable = true
				end,
			})
		end,
		keys = {
			{
				"<leader>on",
				function()
					vim.opt_local.modifiable = true
					return vim.cmd("ObsidianNew")
				end,
				desc = "Create a new Obsidian note",
			},
			{
				"<leader>ot",
				function()
					vim.opt_local.modifiable = true
					return vim.cmd("ObsidianToday")
				end,
				desc = "Open today's Obsidian daily note",
			},
			{
				"<leader>oq",
				function()
					vim.opt_local.modifiable = true
					return vim.cmd("ObsidianQuickSwitch")
				end,
				desc = "Quick switch between Obsidian notes",
			},
			{
				"<leader>of",
				function()
					vim.opt_local.modifiable = true
					return vim.cmd("ObsidianFollowLink")
				end,
				desc = "Follow Obsidian link under cursor",
			},
			{
				"<leader>ob",
				function()
					vim.opt_local.modifiable = true
					return vim.cmd("ObsidianBacklinks")
				end,
				desc = "Show backlinks for the current note",
			},
			{
				"<leader>oi",
				function()
					vim.opt_local.modifiable = true
					return vim.cmd("ObsidianTemplate")
				end,
				desc = "Insert a template into the current note",
			},
		},
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		cmd = { "RenderMarkdown" },
		dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
		config = function()
			require("obsidian").get_client().opts.ui.enable = false
			vim.api.nvim_buf_clear_namespace(0, vim.api.nvim_get_namespaces()["ObsidianUI"], 0, -1)
			require("render-markdown").setup({})
		end,
		keys = {
			{
				"<leader>me", -- Keybinding for enabling RenderMarkdown
				function()
					require("render-markdown").enable()
				end,
				desc = "Enable RenderMarkdown",
			},
			{
				"<leader>md", -- Keybinding for disabling RenderMarkdown
				function()
					require("render-markdown").disable()
				end,
				desc = "Disable RenderMarkdown",
			},
		},
	},
	{
		"iamcco/markdown-preview.nvim",
		ft = { "markdown" },

		build = "cd app && npm install",
		config = function()
			vim.g.mkdp_filetypes = { "markdown" }
			vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle <CR>", {})
		end,
	},
	{ "sbdchd/neoformat" },
}

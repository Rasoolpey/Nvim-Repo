vim.keymap.set("n", "<leader>ip", [[i<div style="text-align: center;">
    <img src="Media/]] .. [[" alt="" width="400">
    <p style="font-style: italic; font-size: 0.9em;">Caption here</p>
</div>]] .. [[<ESC>5k0f"a]], { desc = "Insert image template with styling" })
vim.opt.spelllang = "en_us"
vim.opt.spell = true

-- Keymaps for inserting images dynamically in HTML

-- 1x1 Layout
vim.keymap.set("n", "<leader>i11p", [[i<div style="text-align: center;">
    <img src="Media/" alt="" width="400">
    <p style="font-style: italic; font-size: 0.9em;">Caption here</p>
</div>]] .. [[<ESC>5k0f"a]], { desc = "Insert 1x1 image" })

-- 1x2 Layout (Horizontally Side-by-Side)
vim.keymap.set("n", "<leader>i12p", [[i<div style="display: flex; justify-content: space-between;">
    <figure>
        <img src="Media/" width="300"/>
        <figcaption>Caption 1</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="300"/>
        <figcaption>Caption 2</figcaption>
    </figure>
</div>]] .. [[<ESC>6k0f"a]], { desc = "Insert 1x2 image layout" })

-- 1x3 Layout (Horizontally Side-by-Side)
vim.keymap.set("n", "<leader>i13p", [[i<div style="display: flex; justify-content: space-between;">
    <figure>
        <img src="Media/" width="200"/>
        <figcaption>Caption 1</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="200"/>
        <figcaption>Caption 2</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="200"/>
        <figcaption>Caption 3</figcaption>
    </figure>
</div>]] .. [[<ESC>8k0f"a]], { desc = "Insert 1x3 image layout" })

-- 2x1 Layout (Vertically Stacked)
vim.keymap.set("n", "<leader>i21p", [[i<div style="text-align: center;">
    <figure>
        <img src="Media/" width="400"/>
        <figcaption>Caption 1</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="400"/>
        <figcaption>Caption 2</figcaption>
    </figure>
</div>]] .. [[<ESC>6k0f"a]], { desc = "Insert 2x1 image layout" })

-- 2x2 Layout (Grid)
vim.keymap.set("n", "<leader>i22p", [[i<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 10px;">
    <figure>
        <img src="Media/" width="200"/>
        <figcaption>Caption 1</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="200"/>
        <figcaption>Caption 2</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="200"/>
        <figcaption>Caption 3</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="200"/>
        <figcaption>Caption 4</figcaption>
    </figure>
</div>]] .. [[<ESC>10k0f"a]], { desc = "Insert 2x2 image layout" })

-- 2x3 Layout (Grid with 2 Rows and 3 Columns)
vim.keymap.set("n", "<leader>i23p", [[i<div style="display: grid; grid-template-columns: repeat(3, 1fr); gap: 10px;">
    <figure>
        <img src="Media/" width="150"/>
        <figcaption>Caption 1</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="150"/>
        <figcaption>Caption 2</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="150"/>
        <figcaption>Caption 3</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="150"/>
        <figcaption>Caption 4</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="150"/>
        <figcaption>Caption 5</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="150"/>
        <figcaption>Caption 6</figcaption>
    </figure>
</div>]] .. [[<ESC>12k0f"a]], { desc = "Insert 2x3 image layout" })

-- 3x1 Layout (Vertically Stacked)
vim.keymap.set("n", "<leader>i31p", [[i<div style="text-align: center;">
    <figure>
        <img src="Media/" width="400"/>
        <figcaption>Caption 1</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="400"/>
        <figcaption>Caption 2</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="400"/>
        <figcaption>Caption 3</figcaption>
    </figure>
</div>]] .. [[<ESC>8k0f"a]], { desc = "Insert 3x1 image layout" })

-- 3x2 Layout (Grid with 3 Rows and 2 Columns)
vim.keymap.set("n", "<leader>i32p", [[i<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 10px;">
    <figure>
        <img src="Media/" width="200"/>
        <figcaption>Caption 1</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="200"/>
        <figcaption>Caption 2</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="200"/>
        <figcaption>Caption 3</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="200"/>
        <figcaption>Caption 4</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="200"/>
        <figcaption>Caption 5</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="200"/>
        <figcaption>Caption 6</figcaption>
    </figure>
</div>]] .. [[<ESC>12k0f"a]], { desc = "Insert 3x2 image layout" })

-- 3x3 Layout (Grid)
vim.keymap.set("n", "<leader>i33p", [[i<div style="display: grid; grid-template-columns: repeat(3, 1fr); gap: 10px;">
    <figure>
        <img src="Media/" width="150"/>
        <figcaption>Caption 1</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="150"/>
        <figcaption>Caption 2</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="150"/>
        <figcaption>Caption 3</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="150"/>
        <figcaption>Caption 4</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="150"/>
        <figcaption>Caption 5</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="150"/>
        <figcaption>Caption 6</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="150"/>
        <figcaption>Caption 7</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="150"/>
        <figcaption>Caption 8</figcaption>
    </figure>
    <figure>
        <img src="Media/" width="150"/>
        <figcaption>Caption 9</figcaption>
    </figure>
</div>]] .. [[<ESC>18k0f"a]], { desc = "Insert 3x3 image layout" })

-- Keymaps for adding highlight environments in normal mode
vim.keymap.set(
	"n",
	"<leader>hr",
	[[i<mark class="hltr-red">]] .. [[</mark><ESC>4hi]],
	{ desc = "Insert red highlight" }
)
vim.keymap.set(
	"n",
	"<leader>ho",
	[[i<mark class="hltr-orange">]] .. [[</mark><ESC>4hi]],
	{ desc = "Insert orange highlight" }
)
vim.keymap.set(
	"n",
	"<leader>hy",
	[[i<mark class="hltr-yellow">]] .. [[</mark><ESC>4hi]],
	{ desc = "Insert yellow highlight" }
)
vim.keymap.set(
	"n",
	"<leader>hg",
	[[i<mark class="hltr-green">]] .. [[</mark><ESC>4hi]],
	{ desc = "Insert green highlight" }
)
vim.keymap.set(
	"n",
	"<leader>he",
	[[i<mark class="hltr-grey">]] .. [[</mark><ESC>4hi]],
	{ desc = "Insert grey highlight" }
)
vim.keymap.set(
	"n",
	"<leader>hc",
	[[i<mark class="hltr-aqua">]] .. [[</mark><ESC>4hi]],
	{ desc = "Insert aqua highlight" }
)
vim.keymap.set(
	"n",
	"<leader>hb",
	[[i<mark class="hltr-blue">]] .. [[</mark><ESC>4hi]],
	{ desc = "Insert blue highlight" }
)
vim.keymap.set(
	"n",
	"<leader>hp",
	[[i<mark class="hltr-purple">]] .. [[</mark><ESC>4hi]],
	{ desc = "Insert purple highlight" }
)

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
			-- Dynamically set the base directory based on the current Markdown file
			vim.api.nvim_create_autocmd("BufEnter", {
				pattern = "*.md",
				callback = function()
					-- Set the base directory to the location of the current Markdown file
					local markdown_file_dir = vim.fn.expand("%:p:h") -- Directory of the current Markdown file
					vim.g.mkdp_base_directory = markdown_file_dir
					vim.env.MKDP_BASE_DIRECTORY = vim.g.mkdp_base_directory -- Update environment variable
					print("Base Directory dynamically set to: " .. vim.g.mkdp_base_directory)
				end,
			})

			-- Hardcode the location of the obsidian.lua directory and resolve CSS path
			local plugin_dir = vim.fn.stdpath("config") .. "/lua/plugins" -- Location of the obsidian.lua file
			local css_path = plugin_dir .. "/Tokionight-markdown.css"
			vim.g.mkdp_markdown_css = css_path

			-- Debugging for the CSS path
			vim.api.nvim_create_autocmd("FileType", {
				pattern = "markdown",
				callback = function()
					print("Markdown CSS path: " .. vim.g.mkdp_markdown_css)
					local f = io.open(css_path, "r")
					if f then
						print("CSS file found")
						f:close()
					else
						print("CSS file not found!")
					end
				end,
			})

			-- Basic settings
			vim.g.mkdp_filetypes = { "markdown" }
			vim.g.mkdp_auto_start = 0
			vim.g.mkdp_auto_close = 1
			vim.g.mkdp_refresh_slow = 0
			vim.g.mkdp_theme = "dark"

			-- Keymapping
			vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<CR>", { silent = true })
		end,
	},
	{ "sbdchd/neoformat" },
}

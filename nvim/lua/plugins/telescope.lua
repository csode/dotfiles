return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-live-grep-args.nvim",
    },
    config = function()
        -- Load Telescope and the live grep args extension
        require("telescope").setup({
            defaults = {
                winblend = 0,
                winhighlight = "Normal:Normal,FloatBorder:Normal,Search:Search",
                file_ignore_patterns = {
                    "vendor",
                    "vendor/",
                    "node_modules",
                    "/venv",
                    "node_modules/",
                    "/target",
                    "/build",
                    "/.git",
                    "*.lock",
                    "*.swp",
                    "media/",
                    "/media",
                }, -- Ignore specific file types or patterns
                hidden = true, -- Ensure hidden files are shown (excluding those ignored)
            },
            extensions = {
                live_grep_args = { -- Configuration for live grep args
                    auto_quoting = true, -- Enable/disable auto quoting
                },
            },
        })

        -- Load Telescope extensions
        require("telescope").load_extension("live_grep_args")

        -- Define the Find and Replace function
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", function()
            builtin.find_files({
                find_command = {
                    "find",
                    ".",
                    "-type",
                    "f",
                    "-not",
                    "-path",
                    "./.git/*",
                    "-not",
                    "-path",
                    "./build/*",
                    "-not",
                    "-path",
                    "./cargo/*",
                },
            })
        end)

        -- Other Telescope mappings
        vim.keymap.set("n", "<C-p>", builtin.git_files)
        vim.keymap.set("n", "<leader>pq", function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set("n", "<leader>pWs", function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set("n", "<leader>ps", function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})

        -- Live Grep with arguments
        vim.keymap.set("n", "<leader>lg", function()
            require("telescope").extensions.live_grep_args.live_grep_args()
        end, { noremap = true, silent = true, desc = "Live Grep with Arguments" })
    end,
}

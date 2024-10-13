return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    branch = "v3.x",
    config = function()
        vim.keymap.set("n", "<leader>pv", "<cmd>:Neotree position=current  reveal<cr>")
        require("neo-tree").setup({
            hijack_netrw_behavior = "open_current",
            mappings = {
                ["z"] = {
                    "toggle_node",
                    nowait = true
                }
            },
            window = {
                position = "current",
            },
        })
    end
}

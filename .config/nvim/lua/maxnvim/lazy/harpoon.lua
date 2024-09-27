return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim"
    },
    config = function()
        local harpoon = require("harpoon")

        harpoon:setup()

        vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader>hf", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<leader>hq", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<leader>hw", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<leader>he", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<leader>hr", function() harpoon:list():select(4) end)
        vim.keymap.set("n", "<leader><C-hq>", function() harpoon:list():replace_at(1) end)
        vim.keymap.set("n", "<leader><C-hw>", function() harpoon:list():replace_at(2) end)
        vim.keymap.set("n", "<leader><C-he>", function() harpoon:list():replace_at(3) end)
        vim.keymap.set("n", "<leader><C-hr>", function() harpoon:list():replace_at(4) end)
    end
}
